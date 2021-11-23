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
    
    
//    RELAX ACTIVITIES
    
    let activityRelax1 = Activity(image: "Relax1", type: .relax,name: "Activityrelax1")
    let activityRelax2 = Activity(image: "Relax2", type: .relax,name: "Activityrelax2")
    let activityRelax3 = Activity(image: "Relax3", type: .relax,name: "Activityrelax3")
    
    
    
    
    
//    FUN ACTIVITIES
    
    let activityFun1 = Activity(image: "Fun1", type: .fun,name: "ActivityFun1")
    let activityFun2 = Activity(image: "Fun2", type: .fun,name: "ActivityFun2")
    let activityFun3 = Activity(image: "Fun3", type: .fun,name: "ActivityFun3")
   
    
// CUDDLE ACTIVITIES
    
    let activityCuddle1 = Activity(image: "Cuddle1", type: .cuddle, description: "Protecting and caring for your dog's coat is necessary for its health, to get rid of the dirt, helping you identify wounds or external parasites.   It’s recommended to brush your dog all over the back, chest and belly, while it’s not, if not used to this type of contact, to brush your dog on the legs, tail and neck.           Brushing your dog it's good for both of you: for a dog, being brushed is comparable to a caress or a massage, in fact they love this type of attention, which is very pleasant, relaxing and restful. For humans, it’s a relaxing moment, that can also be useful for strengthening the relationship with the animal.", timer: 300, name: "Brush your dog", points: 3)
    let activityCuddle2 = Activity(image: "Cuddle2", type: .cuddle, description: "Understanding where to pet your dog, to make it feel good and comfortable, it’s the most important thing to do, then your best friend will make you understand where it loves to be and not to be touched.                      Many dogs love to be cuddled behind the ears, under the chin or on the chest, others like to be cuddled on the stomach or petted on the hips, placing your hand on the dog's side, giving it long caresses, until you get close to the end of his back.                    We suggest you to let your dog, since the puppy age, get gradually used to receive cuddles in specific points (such as head cuddles with open hand, an annoying gesture of dominance), so it will understand that these touches are positive, accepting them.                                              Then try not to stress your dog doing something it doesn’t like, treating and cuddling him as if he were a baby or a soft toy, not a game to play with.                                              Cuddling a pet reduces your stress levels, letting the oxytocin quintuple and the endorphins double in your body, that’s why we feel well-being when we pet a dog.", timer: 300, name: "Cuddle", points: 3)
    let activityCuddle3 = Activity(image: "Cuddle3", type: .cuddle, description: "Give your dog a nice full body massage, starting gently from the muzzle, moving to the neck and then continuing to the tail.                              You can also massage its paws, if your dog likes it.                                                 It’s important to give your dog a pleasant massage because you'll spend time with it, being able to check if there are particular marks on its body, controlling its health.", timer: 600, name:"Massage",points: 6)
    
    
    
    init() { self.activities = [activityRelax1,activityRelax2,activityRelax3,activityFun1,activityFun2,activityFun3,activityCuddle1,activityCuddle2,activityCuddle3] }
    
}
