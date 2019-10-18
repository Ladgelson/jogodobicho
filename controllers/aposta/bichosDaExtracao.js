const bichos = require('./bichos')
function bichosDaExtracao(extracao){
    let v = []
    if(extracao.n1){
        v = verifica(extracao.n1,v)
    } 
    if(extracao.n2){
        v = verifica(extracao.n2,v)
    } 
    if(extracao.n3){
        v = verifica(extracao.n3,v)
    } 
    if(extracao.n4){
        v = verifica(extracao.n4,v)
    } 
    if(extracao.n5){
        v = verifica(extracao.n5,v)
    } 
    if(extracao.n6){
        v = verifica(extracao.n6,v)
    } 
    if(extracao.n7){
        v = verifica(extracao.n7,v)
    } 
    if(extracao.n8){
        v = verifica(extracao.n8,v)
    } 
    if(extracao.n9){
        v = verifica(extracao.n9,v)
    } 
    if(extracao.n10){
        v = verifica(extracao.n10,v)
    } 
    const result = v.map((item) => {
        let r = binary_search(item,0,bichos.length-1)
        return r
    })
    const vet = []
    result.filter((item)=> {
        if(!vet.includes(item)) vet.push(item)
    })
    return vet
}
function binary_search(x, start, end) { 
	if (start > end) return -1; 
    let mid=Math.floor((start + end)/2);
    if (bichos[mid].includes(x))return mid+1; 
    if(x === 0) return 25
	if(bichos[mid][3] > x) {
		return binary_search(x, start, mid-1); 
    } else {
		return binary_search(x, mid+1, end); 
    } 
} 


function verifica(x,v){
    let value = Number(x.slice(2))
    v.push(value)
    return v
}

module.exports = bichosDaExtracao