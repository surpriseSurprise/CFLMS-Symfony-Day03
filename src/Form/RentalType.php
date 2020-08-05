<?php

namespace App\Form;

use App\Entity\Rental;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class RentalType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('Name',null,array('attr' => array('class'=> 'form-control', 'style'=>'margin-bottom:15px')) )
            ->add('Image',null,array('attr' => array('class'=> 'form-control', 'style'=>'margin-bottom:15px')) )
            ->add('Date',null,array('attr' => array('class'=> 'select', 'style'=>'margin-bottom:15px')) )
            ->add('Email',null,array('attr' => array('class'=> 'form-control', 'style'=>'margin-bottom:15px')) )
            ->add('Website',null,array('attr' => array('class'=> 'form-control', 'style'=>'margin-bottom:15px')) )
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Rental::class,
        ]);
    }
}
