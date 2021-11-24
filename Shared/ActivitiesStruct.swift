//
//  ActivitiesStruct.swift
//  Qute
//
//  Created by Davide Biancardi on 18/11/21.
//

import Foundation
import SwiftUI

struct ActivitiesStore {
    
    var activities: [Activity] = []
    
//    jvhkbj,
//    RELAX ACTIVITIES
    
    let activityRelax1 = Activity(image: "Relax1", type: .relax,description: "Walking with the dog has innumerable physical, psychological and spiritual benefits, both for us and for our furry friend, it’s also a way to give it attention.                                      Walking helps the cardiovascular system, helps to relax the mind and to produce endorphins and that it is good for muscles and joints and for both us and our friend, walking the dog is certainly a healthy activity.                                 Walking the dog should never be reduced to just getting him to fulfill his physiological needs and go home, as this will inevitably produce an unhappy dog, going out three times a day for about half an hour each, it will be fine.", timer: 1800, name: "Walk", points: 10)
    let activityRelax2 = Activity(image: "Relax2", type: .relax, description: "Playing music reduces stress in dogs, helping it to feel calmer and encourage relaxation, with less barking, lower respiratory rates, and lower levels of the stress hormone cortisol, as the effect music has on human emotions.                           Music therapy is used as a natural anti-anxiety remedy and to help with sleep disorders, and it's easy to use the same technique for your puppy or adult dog.                                            Certain music genres have been proven to be more soothing for your dog than others, such as classical music, reggae and soft rock.", timer: 300, name: "Music", points: 3)
    let activityRelax3 = Activity(image: "Relax3", type: .relax, description: "Talking to our dog is important, it allows us to build a more complete and harmonious relationship between human companion and furry friend, just like when talking to a newborn.                                                           In fact, talking to your dog allows them to keep their attention constant on us when we talk about him or we talk to him, also developing a strong ability to know how to discern topics, in relation to the tone, rhythm and volume of the conversation.                                                  Also, talking to our pets helps us to release stress, confide in each other and to feel lighter.", timer: 300, name: "Storytelling", points: 5)
    
    
    
    
    
//    FUN ACTIVITIES
    
    let activityFun1 = Activity(image: "Fun1", type: .fun, description: "The primary purpose of dancing with your dog is to have fun and entertain, but the primary goal is to strengthen the bond between dog and owner.", timer: 300 ,name: "Dance", points: 3)
    let activityFun2 = Activity(image: "Fun2", type: .fun,description: "Playing hide and seek is good for psychophysical balance, managing to use energy in a positive way and stimulate the brain.                                       It can be done anywhere and will help drain a lot of energy your dog accumulates if he stays indoors for several hours.                                      You won’t need special tools, just some tasty prizes or balls you have at home.                                                     This game can be played both outside and at home, but for the first few times it is better to limit yourself to a smaller space.                                                   The important thing to do, if you play for the first time, is to start from a very low difficulty level, then gradually increase the rank.", timer: 600 ,name: "hide and seek", points: 6)
    let activityFun3 = Activity(image: "Fun3", type: .fun,description: "Retrieving is one of the most commonly required exercises in dog training, that consists in throwing an object at our furry friend, who will have to pick it up, bring it back and leave it to us again.                                 This game is very useful to create a positive association between fun and the presence of the owner, sharing positive feelings and making the dog grow pleasure and desire to be close to us.                                             Furthermore, playing and engaging your dog in daily activities causes him to let off steam and reduces the possibility of him draining his energies on wrong occupations, also helping us stress out.", timer: 900, name: "Retrieving game", points: 8)
   
    
// CUDDLE ACTIVITIES
    
    let activityCuddle1 = Activity(image: "Cuddle1", type: .cuddle, description: "Protecting and caring for your dog's coat is necessary for its health, to get rid of the dirt, helping you identify wounds or external parasites.                       It’s recommended to brush your dog all over the back, chest and belly, while it’s not, if not used to this type of contact, to brush your dog on the legs, tail and neck.                            Brushing your dog it's good for both of you: for a dog, being brushed is comparable to a caress or a massage, in fact they love this type of attention, which is very pleasant, relaxing and restful.                            For humans, it’s a relaxing moment, that can also be useful for strengthening the relationship with the animal.", timer: 300, name: "Brush your dog", points: 3)
    let activityCuddle2 = Activity(image: "Cuddle2", type: .cuddle, description: "Understanding where to pet your dog, to make it feel good and comfortable, it’s the most important thing to do, then your best friend will make you understand where it loves to be and not to be touched.                      Many dogs love to be cuddled behind the ears, under the chin or on the chest, others like to be cuddled on the stomach or petted on the hips, placing your hand on the dog's side, giving it long caresses, until you get close to the end of his back.                    We suggest you to let your dog, since the puppy age, get gradually used to receive cuddles in specific points (such as head cuddles with open hand, an annoying gesture of dominance), so it will understand that these touches are positive, accepting them.                                              Then try not to stress your dog doing something it doesn’t like, treating and cuddling him as if he were a baby or a soft toy, not a game to play with.                                              Cuddling a pet reduces your stress levels, letting the oxytocin quintuple and the endorphins double in your body, that’s why we feel well-being when we pet a dog.", timer: 300, name: "Cuddle", points: 3)
    let activityCuddle3 = Activity(image: "Cuddle3", type: .cuddle, description: "Give your dog a nice full body massage, starting gently from the muzzle, moving to the neck and then continuing to the tail.                              You can also massage its paws, if your dog likes it.                                                       It’s important to give your dog a pleasant massage because you'll spend time with it, being able to check if there are particular marks on its body, controlling its health.", timer: 10, name:"Massage",points: 6)
    
    
    
    init() { self.activities = [activityRelax1,activityRelax2,activityRelax3,activityFun1,activityFun2,activityFun3,activityCuddle1,activityCuddle2,activityCuddle3] }
    
}
