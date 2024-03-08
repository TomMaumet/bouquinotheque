import { Controller } from "@hotwired/stimulus"
import Quagga from '@ericblade/quagga2';

// Connects to data-controller="scanner"
export default class extends Controller {
  static targets = ["EAN"]

  connect() {
  }
  scan() {
    Quagga.init({
      inputStream : {
        name : "Live",
        type : "LiveStream",
        target : document.querySelector("#interactive") // Or '#yourElement' (optional)
      },
      decoder : {
        readers : ["ean_reader", "ean_8_reader"]
      }
    }, function(err) {
        if (err) {
            console.log(err);
            return
        }
        console.log("Initialization finished. Ready to start");
        Quagga.start();

    });
    Quagga.onDetected((res) => {
      this.EANTarget.value = res.codeResult.code
      Quagga.stop()

    })
  }
}
