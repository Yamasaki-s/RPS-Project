function select(handNumber) {
  var selectHand = document.getElementsByName('hand');
  selectHand[0].value = handNumber;
  document.janken.submit();
}