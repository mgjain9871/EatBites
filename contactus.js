let inputs=document.querySelectorAll('input');

const patterns={
    _replyto:/^[a-z\d\.-]+@[a-z\d-]+\.[a-z]{2,8}(\.[a-z]{2,5})?$/,
};

function validate(field, regex){
  //console.log(regex.match(field.value));
  if(regex.test(field.value)){
    field.className='valid'; 
    return 0;
  }
  field.className='invalid';
  return 0;            
}

inputs.forEach((input)=>{
    input.addEventListener('keyup',(e)=>{
    console.log(e.target.attributes.name.value);
    validate(e.target, patterns[e.target.attributes.name.value]);
    });
});