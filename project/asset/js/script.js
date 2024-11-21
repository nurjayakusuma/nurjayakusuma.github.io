const voucherBtn = document.querySelector('.voucherBtn');

voucherBtn.addEventListener('click', function() {
    let voucher = document.getElementById('voucher').value;

    if (voucher === 'rumahkingkong') {
        location.href = 'http://dopoto.rf.gd/petho/rettake/gopoto/success.html'; // Redirect
        document.getElementById('voucher').value = ''; // Kosongkan input voucher
    } 
});

