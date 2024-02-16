type
  College* = enum
    Conveyance, Divination, Air, Earth, Fire, Water, Force, Mental, Meta, Morph, Nature, NecromanticBlack, NecromanticWhite, Phantasm, Summoning, Temporal
  Spell* = object of RootObj
    id*: int
    name*: string
    college*: College
    minLVL*: int
    minWP*: int
    energy*: int
    energyMaintainancePerTenSec*: int
    isStackable*: bool
    description*: string
  Disarm* = object of Spell
  UnlockingCantrip* = object of Spell
  UnseenForce* = object of Spell
  SpatialDistortion* = object of Spell
  Teleportation* = object of Spell
  SenseAlignment* = object of Spell
  SeeContents* = object of Spell
  ReadAura* = object of Spell
  SenseHidden* = object of Spell
  DivineMagic* = object of Spell
  VitalityOfAir* = object of Spell
  PoisonVapours* = object of Spell
  CallWinds* = object of Spell
  BodyOfAir* = object of Spell
  CallAirElemental* = object of Spell
  StrengthOfEarth* = object of Spell
  StoneThrow* = object of Spell
  WallOfStone* = object of Spell
  BodyOfStone* = object of Spell
  CallEarthElemental* = object of Spell
  AgilityOfFire* = object of Spell
  WallOfFire* = object of Spell
  FireFlash* = object of Spell
  BodyOfFire* = object of Spell
  CallOfFire* = object of Spell
  PurityOfWater* = object of Spell
  CallFog* = object of Spell
  SquallOfIce* = object of Spell
  BodyOfWater* = object of Spell
  CallWaterElemental* = object of Spell
  ShieldProtection* = object of Spell
  Jolt* = object of Spell
  WallOfForce* = object of Spell
  BoltOfLightning* = object of Spell
  Disintegrate* = object of Spell
  Charm* = object of Spell
  Stun* = object of Spell
  DrainWill* = object of Spell
  Nightmare* = object of Spell
  DominateWill* = object of Spell
  ResistMagick* = object of Spell
  DisperseMagick* = object of Spell
  DweomerShield* = object of Spell
  BondsOfMagick* = object of Spell
  ReflectionShield* = object of Spell
  HardenedHands* = object of Spell
  Weaken* = object of Spell
  Shrink* = object of Spell
  FleshToStone* = object of Spell
  Polymorph* = object of Spell
  CharmBeast* = object of Spell
  Entangle* = object of Spell
  ControlBeast* = object of Spell
  SuccourBeast* = object of Spell
  Regenerate* = object of Spell
  Harm* = object of Spell
  ConjureSpirit* = object of Spell
  SummonUndead* = object of Spell
  CreateUndead* = object of Spell
  QuenchLife* = object of Spell
  MinorHealing* = object of Spell
  HaltPoison* = object of Spell
  MajorHealing* = object of Spell
  Sanctuary* = object of Spell
  Resurrect* = object of Spell
  Illuminate* = object of Spell
  Flash* = object of Spell
  BlurSight* = object of Spell
  PhantasmalFiend* = object of Spell
  Invisibility* = object of Spell
  PlagueOfInsects* = object of Spell
  OrcishChampion* = object of Spell
  GuardianOgre* = object of Spell
  Hellgate* = object of Spell
  Familiar* = object of Spell
  Magelock* = object of Spell
  CongealTime* = object of Spell
  Hasten* = object of Spell
  Stasis* = object of Spell
  TempusFugit* = object of Spell

func createDisarm*: Disarm =
  Disarm(
    id: -1,
    name: "Disarm",
    college: Conveyance,
    minLVL: 1,
    minWP: 6,
    energy: 5,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell knocks the target's weapon out of their hands, and with a high MA the caster inflicts minor damage. The spell cannot be resisted."""
  )

func createUnlockingCantrip*: UnlockingCantrip =
  UnlockingCantrip(
    id: -1,
    name: "Unlocking Cantrip",
    college: Conveyance,
    minLVL: 1,
    minWP: 9,
    energy: 10,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """Unlocking Cantrip opens the locks on doors and containers. Note that any Traps on a locked item are unaffected by this spell, and that Magickally Held items must instead be opened with the 2nd level Meta spell Disperse Magick."""
  )

func createUnseenForce*: UnseenForce =
  UnseenForce(
    id: -1,
    name: "Unseen Force",
    college: Conveyance,
    minLVL: 5,
    minWP: 12,
    energy: 15,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell pushes the target five tiles away from the caster, and can cause minor damage. Living beings, corpses, and objects weighing less than 5 stone can be pushed, but not stationary objects or containers."""
  )

func createSpatialDistortion*: SpatialDistortion =
  SpatialDistortion(
    id: -1,
    name: "Spatial Distortion",
    college: Conveyance,
    minLVL: 10,
    minWP: 15,
    energy: 25,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """The caster instantly moves to a tile of their choosing. The destination cannot be more than 8 tiles away, must be in their direct line of sight, and free of any intervening obstructions."""
  )

func createTeleportation*: Teleportation =
  Teleportation(
    id: -1,
    name: "Teleportation",
    college: Conveyance,
    minLVL: 15,
    minWP: 18,
    energy: 50,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """The caster and their companions can teleport to most (but not all) of the marked locations on the World Map."""
  )

func createSenseAlignment*: SenseAlignment =
  SenseAlignment(
    id: -1,
    name: "Sense alignment",
    college: Divination,
    minLVL: 1,
    minWP: 6,
    energy: 5,
    energyMaintainancePerTenSec: 1,
    isStackable: false,
    description: """This spell shows the general alignment of a creature with a picture."""
  )

func createSeeContents*: SeeContents =
  SeeContents(
    id: -1,
    name: "See Contents",
    college: Divination,
    minLVL: 1,
    minWP: 9,
    energy: 10,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """Shows the contents of a container it is used on, regardless of whether a container is closed, locked or opened."""
  )

func createReadAura*: ReadAura =
  ReadAura(
    id: -1,
    name: "Read Aura",
    college: Divination,
    minLVL: 5,
    minWP: 12,
    energy: 15,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """Displays the attributes of a creature it is used on in the form of a character editor screen."""
  )

func createSenseHidden*: SenseHidden =
  SenseHidden(
    id: -1,
    name: "Sense Hidden",
    college: Divination,
    minLVL: 10,
    minWP: 15,
    energy: 25,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """Allows the player character and their followers to see all traps."""
  )

func createDivineMagic*: DivineMagic =
  DivineMagic(
    id: -1,
    name: "Divine Magic",
    college: Divination,
    minLVL: 15,
    minWP: 18,
    energy: 30,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """Allows you to identify all the magical properties of one object from the inventory of the caster, equivalent to using the scroll of the same name or paying for identification at a gypsy."""
  )

func createVitalityOfAir*: VitalityOfAir =
  VitalityOfAir(
    id: -1,
    name: "vitality of air",
    college: Air,
    minLVL: 1,
    minWP: 6,
    energy: 5,
    energyMaintainancePerTenSec: 1,
    isStackable: true,
    description: """Target gains +4 to Constitution, regardless of its or the caster's Magickal Aptitude."""
  )

func createPoisonVapours*: PoisonVapours =
  PoisonVapours(
    id: -1,
    name: "poison vapours",
    college: Air,
    minLVL: 1,
    minWP: 9,
    energy: 10,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """Creates a cloud of poisonous vapours concentrated around the target. Any creature other than the caster and his followers will get 15-50 PD, depending on the Magickal Aptitude of the caster."""
  )

func createCallWinds*: CallWinds =
  CallWinds(
    id: -1,
    name: "call winds",
    college: Air,
    minLVL: 5,
    minWP: 12,
    energy: 15,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """Causes wind gusts to flow from the caster in all directions, pushing away all nearby creatures and dealing damage if they hit a nearby object or wall."""
  )

func createBodyOfAir*: BodyOfAir =
  BodyOfAir(
    id: -1,
    name: "body of air",
    college: Air,
    minLVL: 10,
    minWP: 15,
    energy: 25,
    energyMaintainancePerTenSec: 2,
    isStackable: false,
    description: """This spell transforms the body of a target into the air, making it transparent."""
  )

func createCallAirElemental*: CallAirElemental =
  CallAirElemental(
    id: -1,
    name: "call air elemental",
    college: Air,
    minLVL: 15,
    minWP: 18,
    energy: 50,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """Summons an Air Elemental to do the caster's bidding."""
  )

func createStrengthOfEarth*: StrengthOfEarth =
  StrengthOfEarth(
    id: -1,
    name: "Strength of earth",
    college: Earth,
    minLVL: 1,
    minWP: 6,
    energy: 5,
    energyMaintainancePerTenSec: 1,
    isStackable: true,
    description: """Target gains +4 to Strength, regardless of its or the caster's Magickal Aptitude."""
  )

func createStoneThrow*: StoneThrow =
  StoneThrow(
    id: -1,
    name: "stone throw",
    college: Earth,
    minLVL: 1,
    minWP: 9,
    energy: 10,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell creates a homing stone projectile that inflicts physical damage on the target, including living and inanimate objects."""
  )

func createWallOfStone*: WallOfStone =
  WallOfStone(
    id: -1,
    name: "wall of stone",
    college: Earth,
    minLVL: 5,
    minWP: 12,
    energy: 15,
    energyMaintainancePerTenSec: 1,
    isStackable: false,
    description: """Creates a temporary wall of stone on targeted area while maintain."""
  )

func createBodyOfStone*: BodyOfStone =
  BodyOfStone(
    id: -1,
    name: "body of stone",
    college: Earth,
    minLVL: 10,
    minWP: 15,
    energy: 25,
    energyMaintainancePerTenSec: 2,
    isStackable: false,
    description: """The spell turns the body of a target into stone."""
  )

func createCallEarthElemental*: CallEarthElemental =
  CallEarthElemental(
    id: -1,
    name: "call earth elemental",
    college: Earth,
    minLVL: 15,
    minWP: 18,
    energy: 50,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """Summons a Earth Elemental to do the caster's bidding."""
  )

func createAgilityOfFire*: AgilityOfFire =
  AgilityOfFire(
    id: -1,
    name: "agility of fire",
    college: Fire,
    minLVL: 1,
    minWP: 6,
    energy: 5,
    energyMaintainancePerTenSec: 1,
    isStackable: true,
    description: """Target gains +4 Dexterity, regardless of its or the caster's Magickal Aptitude."""
  )

func createWallOfFire*: WallOfFire =
  WallOfFire(
    id: -1,
    name: "wall of fire",
    college: Fire,
    minLVL: 1,
    minWP: 9,
    energy: 10,
    energyMaintainancePerTenSec: 1,
    isStackable: false,
    description: """Creates a wall of fire which damages every creature except the caster and the members of his group passing through it for 1-4 damage by fire."""
  )

func createFireFlash*: FireFlash =
  FireFlash(
    id: -1,
    name: "fireflash",
    college: Fire,
    minLVL: 5,
    minWP: 12,
    energy: 15,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """Creates a classic fireball damaging every creature and their equipment located within two steps from the target (aside from the caster and their party) . Damage is 15-45 FD, but a successful saving throw reduces damage by half."""
  )

func createBodyOfFire*: BodyOfFire =
  BodyOfFire(
    id: -1,
    name: "body of fire",
    college: Fire,
    minLVL: 10,
    minWP: 15,
    energy: 25,
    energyMaintainancePerTenSec: 10,
    isStackable: false,
    description: """Turns the body of a target into fire and flames."""
  )

func createCallOfFire*: CallOfFire =
  CallOfFire(
    id: -1,
    name: "call of fire",
    college: Fire,
    minLVL: 15,
    minWP: 18,
    energy: 50,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """Summons a Fire Elemental to do the caster's bidding."""
  )

func createPurityOfWater*: PurityOfWater =
  PurityOfWater(
    id: -1,
    name: "purity of water",
    college: Water,
    minLVL: 1,
    minWP: 6,
    energy: 5,
    energyMaintainancePerTenSec: 1,
    isStackable: true,
    description: """Target gains +4 Beauty and any associate reaction modifiers that would come with that, regardless of its or the caster's Magickal Aptitude."""
  )

func createCallFog*: CallFog =
  CallFog(
    id: -1,
    name: "call fog",
    college: Water,
    minLVL: 1,
    minWP: 9,
    energy: 10,
    energyMaintainancePerTenSec: 1,
    isStackable: false,
    description: """This spell creates a billowing mist centered on the target tile, reducing a creature's chance to hit."""
  )

func createSquallOfIce*: SquallOfIce =
  SquallOfIce(
    id: -1,
    name: "squall of ice",
    college: Water,
    minLVL: 5,
    minWP: 12,
    energy: 15,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """This spell creates a storm of ice and sleet, centered on the target tile. It deals damage over time, much like the Wall of Fire."""
  )

func createBodyOfWater*: BodyOfWater =
  BodyOfWater(
    id: -1,
    name: "body of water",
    college: Water,
    minLVL: 10,
    minWP: 25,
    energy: 15,
    energyMaintainancePerTenSec: 2,
    isStackable: false,
    description: """Turns the body of a target into liquid water."""
  )

func createCallWaterElemental*: CallWaterElemental =
  CallWaterElemental(
    id: -1,
    name: "call water elemental",
    college: Water,
    minLVL: 15,
    minWP: 18,
    energy: 50,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """Summons a Water Elemental to do the caster's bidding."""
  )

func createShieldProtection*: ShieldProtection =
  ShieldProtection(
    id: -1,
    name: "shield protection",
    college: Force,
    minLVL: 1,
    minWP: 6,
    energy: 5,
    energyMaintainancePerTenSec: 1,
    isStackable: false,
    description: """This spell creates a deflective energy screen about the target increasing its Armor Class by 10, and also up to 10 50% damage, fire and electrical resistance."""
  )

func createJolt*: Jolt =
  Jolt(
    id: -1,
    name: "jolt",
    college: Force,
    minLVL: 1,
    minWP: 9,
    energy: 10,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """When this spell is thrown, a surge of electricity will flow from the caster into all adjacent creatures, causing electrical damage. A successful saving throw will halve this damage."""
  )

func createWallOfForce*: WallOfForce =
  WallOfForce(
    id: -1,
    name: "wall of force",
    college: Force,
    minLVL: 5,
    minWP: 12,
    energy: 15,
    energyMaintainancePerTenSec: 2,
    isStackable: false,
    description: """This spell creates a shimmering wall of force in the specified empty square. This wall is impassable unless dispelled or disintegrated."""
  )

func createBoltOfLightning*: BoltOfLightning =
  BoltOfLightning(
    id: -1,
    name: "bolt of lightning",
    college: Force,
    minLVL: 10,
    minWP: 15,
    energy: 25,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell creates a bolt of lightning from the caster to the specified tile or target. Any creature struck by the bolt will be subjected to electrical damage, or half that damage if a saving throw is successful."""
  )

func createDisintegrate*: Disintegrate =
  Disintegrate(
    id: -1,
    name: "disintegrate",
    college: Force,
    minLVL: 15,
    minWP: 18,
    energy: 50,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell completely destroys the target and any inventory that it was carrying. If the target is a creature, then it is killed and cannot be resurrected."""
  )

func createCharm*: Charm =
  Charm(
    id: -1,
    name: "charm",
    college: Mental,
    minLVL: 1,
    minWP: 6,
    energy: 5,
    energyMaintainancePerTenSec: 1,
    isStackable: false,
    description: """This spell increases the target's reaction modifier to the caster."""
  )

func createStun*: Stun =
  Stun(
    id: -1,
    name: "stun",
    college: Mental,
    minLVL: 1,
    minWP: 9,
    energy: 10,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell will stun the target which then cannot move or attack for a few seconds."""
  )

func createDrainWill*: DrainWill =
  DrainWill(
    id: -1,
    name: "drain will",
    college: Mental,
    minLVL: 5,
    minWP: 12,
    energy: 15,
    energyMaintainancePerTenSec: 1,
    isStackable: true,
    description: """This spell will cause the target creature's Willpower to drop by half while the spell is maintained."""
  )

func createNightmare*: Nightmare =
  Nightmare(
    id: -1,
    name: "nightmare",
    college: Mental,
    minLVL: 10,
    minWP: 15,
    energy: 20,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell causes all creatures within the vicinity of the caster to flee in terror. Those resisting the spell will turn hostile."""
  )

func createDominateWill*: DominateWill =
  DominateWill(
    id: -1,
    name: "dominate will",
    college: Mental,
    minLVL: 15,
    minWP: 18,
    energy: 25,
    energyMaintainancePerTenSec: 6,
    isStackable: false,
    description: """This spell places the mind of the target under the control of the caster with the basic dialogue tree. A successful save or cancelling the spell will cause the target to turn hostile."""
  )

func createResistMagick*: ResistMagick =
  ResistMagick(
    id: -1,
    name: "resist magick",
    college: Meta,
    minLVL: 1,
    minWP: 6,
    energy: 1,
    energyMaintainancePerTenSec: 1,
    isStackable: false,
    description: """This spell sets the target's magic resistance to 50."""
  )

func createDisperseMagick*: DisperseMagick =
  DisperseMagick(
    id: -1,
    name: "disperse magick",
    college: Meta,
    minLVL: 1,
    minWP: 9,
    energy: 0,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell cancels existing spell effects on the target, negates the Magelock spell, and dispels summoned creatures."""
  )

func createDweomerShield*: DweomerShield =
  DweomerShield(
    id: -1,
    name: "dweomer shield",
    college: Meta,
    minLVL: 5,
    minWP: 12,
    energy: 5,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """This spell prevents magic from operating on the target. In addition, it prevents the target from casting any spells in the same way as Bonds of Magick."""
  )

func createBondsOfMagick*: BondsOfMagick =
  BondsOfMagick(
    id: -1,
    name: "bonds of magick",
    college: Meta,
    minLVL: 10,
    minWP: 15,
    energy: 5,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """This spell prevents the target from casting any spells."""
  )

func createReflectionShield*: ReflectionShield =
  ReflectionShield(
    id: -1,
    name: "reflection shield",
    college: Meta,
    minLVL: 15,
    minWP: 18,
    energy: 5,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """This spell creates a protective field and causes any spell to be reflected back to its caster, at additional cost."""
  )

func createHardenedHands*: HardenedHands =
  HardenedHands(
    id: -1,
    name: "hardened hands",
    college: Morph,
    minLVL: 1,
    minWP: 6,
    energy: 5,
    energyMaintainancePerTenSec: 1,
    isStackable: false,
    description: """This spell makes the target creature do +2 more melee damage regardless of Aptitude when the weapon slot is empty."""
  )

func createWeaken*: Weaken =
  Weaken(
    id: -1,
    name: "weaken",
    college: Morph,
    minLVL: 1,
    minWP: 9,
    energy: 15,
    energyMaintainancePerTenSec: 2,
    isStackable: false,
    description: """This spell weakens the substance of the target by reducing its Strength and damage resistance for the duration of the spell."""
  )

func createShrink*: Shrink =
  Shrink(
    id: -1,
    name: "shrink",
    college: Morph,
    minLVL: 5,
    minWP: 12,
    energy: 20,
    energyMaintainancePerTenSec: 2,
    isStackable: false,
    description: """This spell reduces a creature to half its size."""
  )

func createFleshToStone*: FleshToStone =
  FleshToStone(
    id: -1,
    name: "flesh to stone",
    college: Morph,
    minLVL: 10,
    minWP: 15,
    energy: 20,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell converts the target to stone temporarily. The target is paralyzed and cannot be physically damaged."""
  )

func createPolymorph*: Polymorph =
  Polymorph(
    id: -1,
    name: "polymorph",
    college: Morph,
    minLVL: 15,
    minWP: 18,
    energy: 30,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """This spell transforms the target creature into a sheep for as long as the spell is maintained."""
  )

func createCharmBeast*: CharmBeast =
  CharmBeast(
    id: -1,
    name: "charm beast",
    college: Nature,
    minLVL: 1,
    minWP: 6,
    energy: 8,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell causes every animal in the vicinity to gain a positive reaction to the caster."""
  )

func createEntangle*: Entangle =
  Entangle(
    id: -1,
    name: "entangle",
    college: Nature,
    minLVL: 1,
    minWP: 9,
    energy: 5,
    energyMaintainancePerTenSec: 2,
    isStackable: false,
    description: """This spell imbues a patch of vegetation with motion preventing the target creature from walking."""
  )

func createControlBeast*: ControlBeast =
  ControlBeast(
    id: -1,
    name: "control beast",
    college: Nature,
    minLVL: 5,
    minWP: 12,
    energy: 15,
    energyMaintainancePerTenSec: 2,
    isStackable: false,
    description: """This spell places the animal under the control of the caster, unless a saving throw is made."""
  )

func createSuccourBeast*: SuccourBeast =
  SuccourBeast(
    id: -1,
    name: "succour beast",
    college: Nature,
    minLVL: 10,
    minWP: 15,
    energy: 20,
    energyMaintainancePerTenSec: 4,
    isStackable: false,
    description: """This spell summons an animal to do the caster's bidding. The type of creature scales with MA."""
  )

func createRegenerate*: Regenerate =
  Regenerate(
    id: -1,
    name: "regenerate",
    college: Nature,
    minLVL: 15,
    minWP: 18,
    energy: 25,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """This spell greatly increases the heal rate of the caster and all followers."""
  )

func createHarm*: Harm =
  Harm(
    id: -1,
    name: "harm",
    college: NecromanticBlack,
    minLVL: 1,
    minWP: 6,
    energy: 5,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell causes damage to the target creature. The damage dealt scales with the caster's Magickal Aptitude."""
  )

func createConjureSpirit*: ConjureSpirit =
  ConjureSpirit(
    id: -1,
    name: "conjure spirit",
    college: NecromanticBlack,
    minLVL: 1,
    minWP: 9,
    energy: 10,
    energyMaintainancePerTenSec: 3,
    isStackable: false,
    description: """This spell allows the caster to speak with the spirit of the target corpse. Some corpses can provide information necessary to the main quest and some side quests."""
  )

func createSummonUndead*: SummonUndead =
  SummonUndead(
    id: -1,
    name: "summon undead",
    college: NecromanticBlack,
    minLVL: 5,
    minWP: 12,
    energy: 15,
    energyMaintainancePerTenSec: 2,
    isStackable: false,
    description: """This spell summons an undead monster to do the caster's bidding. The type of undead scales with the caster's Magickal Aptitude."""
  )

func createCreateUndead*: CreateUndead =
  CreateUndead(
    id: -1,
    name: "create undead",
    college: NecromanticBlack,
    minLVL: 10,
    minWP: 15,
    energy: 20,
    energyMaintainancePerTenSec: 3,
    isStackable: false,
    description: """This spell animates the target corpse, which will follow the caster."""
  )

func createQuenchLife*: QuenchLife =
  QuenchLife(
    id: -1,
    name: "quench life",
    college: NecromanticBlack,
    minLVL: 15,
    minWP: 18,
    energy: 50,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell deals 50-100 damage to the target creature, unless it successfully saves. It cannot be used on Undead."""
  )

func createMinorHealing*: MinorHealing =
  MinorHealing(
    id: -1,
    name: "minor healing",
    college: NecromanticWhite,
    minLVL: 1,
    minWP: 6,
    energy: 5,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell heals a small amount of health points of damage to the target."""
  )

func createHaltPoison*: HaltPoison =
  HaltPoison(
    id: -1,
    name: "halt poison",
    college: NecromanticWhite,
    minLVL: 1,
    minWP: 9,
    energy: 8,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell reduces the Poison Factor of the target."""
  )

func createMajorHealing*: MajorHealing =
  MajorHealing(
    id: -1,
    name: "major healing",
    college: NecromanticWhite,
    minLVL: 5,
    minWP: 12,
    energy: 20,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell heals a large amount of health points of damage to the target. It will also remove scars and heal crippling injuries."""
  )

func createSanctuary*: Sanctuary =
  Sanctuary(
    id: -1,
    name: "sanctuary",
    college: NecromanticWhite,
    minLVL: 10,
    minWP: 15,
    energy: 15,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """This spell causes Undead to ignore the target, unless the target is in combat."""
  )

func createResurrect*: Resurrect =
  Resurrect(
    id: -1,
    name: "resurrect",
    college: NecromanticWhite,
    minLVL: 15,
    minWP: 18,
    energy: 50,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell returns the target creature to life, with full health and a poison level of zero."""
  )

func createIlluminate*: Illuminate =
  Illuminate(
    id: -1,
    name: "illuminate",
    college: Phantasm,
    minLVL: 1,
    minWP: 6,
    energy: 3,
    energyMaintainancePerTenSec: 1,
    isStackable: false,
    description: """This spell increases the light around the target, and reduces skill light penalties."""
  )

func createFlash*: Flash =
  Flash(
    id: -1,
    name: "flash",
    college: Phantasm,
    minLVL: 1,
    minWP: 9,
    energy: 10,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell lowers the "to hit" percentage of the target by -30%."""
  )

func createBlurSight*: BlurSight =
  BlurSight(
    id: -1,
    name: "blur sight",
    college: Phantasm,
    minLVL: 5,
    minWP: 12,
    energy: 15,
    energyMaintainancePerTenSec: 2,
    isStackable: false,
    description: """This spell increases the caster's Armor Class by +60 (to a maximum of 95)."""
  )

func createPhantasmalFiend*: PhantasmalFiend =
  PhantasmalFiend(
    id: -1,
    name: "phantasmal fiend",
    college: Phantasm,
    minLVL: 10,
    minWP: 15,
    energy: 20,
    energyMaintainancePerTenSec: 4,
    isStackable: false,
    description: """This spell summons a version of a Greater Demon to do the caster's bidding."""
  )

func createInvisibility*: Invisibility =
  Invisibility(
    id: -1,
    name: "invisibility",
    college: Phantasm,
    minLVL: 15,
    minWP: 18,
    energy: 30,
    energyMaintainancePerTenSec: 6,
    isStackable: false,
    description: """The target becomes invisible except when attacking."""
  )

func createPlagueOfInsects*: PlagueOfInsects =
  PlagueOfInsects(
    id: -1,
    name: "plague of insects",
    college: Summoning,
    minLVL: 1,
    minWP: 6,
    energy: 3,
    energyMaintainancePerTenSec: 1,
    isStackable: false,
    description: """This spell summons a swarm of insects which surround and slow the target creature."""
  )

func createOrcishChampion*: OrcishChampion =
  OrcishChampion(
    id: -1,
    name: "orcish champion",
    college: Summoning,
    minLVL: 1,
    minWP: 9,
    energy: 10,
    energyMaintainancePerTenSec: 2,
    isStackable: false,
    description: """This spell summons an orc fighter to do the caster's bidding."""
  )

func createGuardianOgre*: GuardianOgre =
  GuardianOgre(
    id: -1,
    name: "guardian ogre",
    college: Summoning,
    minLVL: 5,
    minWP: 12,
    energy: 15,
    energyMaintainancePerTenSec: 3,
    isStackable: false,
    description: """This spell summons a powerful ogre to do the caster's bidding."""
  )

func createHellgate*: Hellgate =
  Hellgate(
    id: -1,
    name: "hellgate",
    college: Summoning,
    minLVL: 10,
    minWP: 15,
    energy: 30,
    energyMaintainancePerTenSec: 6,
    isStackable: false,
    description: """This spell summons a demon to do the caster's bidding."""
  )

func createFamiliar*: Familiar =
  Familiar(
    id: -1,
    name: "familiar",
    college: Summoning,
    minLVL: 15,
    minWP: 18,
    energy: 60,
    energyMaintainancePerTenSec: 0,
    isStackable: false,
    description: """This spell summons a familiar for the caster to do the caster's bidding. The type of Familiar scales with the caster's Magickal Aptitude."""
  )

func createMagelock*: Magelock =
  Magelock(
    id: -1,
    name: "magelock",
    college: Temporal,
    minLVL: 1,
    minWP: 6,
    energy: 5,
    energyMaintainancePerTenSec: 1,
    isStackable: false,
    description: """This spell blocks any portal or container, rendering keys, lock picks, and the Unlocking Cantrip spell useless."""
  )

func createCongealTime*: CongealTime =
  CongealTime(
    id: -1,
    name: "congeal time",
    college: Temporal,
    minLVL: 1,
    minWP: 9,
    energy: 10,
    energyMaintainancePerTenSec: 2,
    isStackable: false,
    description: """This spell halves the base speed of all creatures in the vicinity of the caster who fail their saving throws."""
  )

func createHasten*: Hasten =
  Hasten(
    id: -1,
    name: "hasten",
    college: Temporal,
    minLVL: 5,
    minWP: 12,
    energy: 20,
    energyMaintainancePerTenSec: 3,
    isStackable: false,
    description: """This spell will double the target creature's base speed."""
  )

func createStasis*: Stasis =
  Stasis(
    id: -1,
    name: "stasis",
    college: Temporal,
    minLVL: 10,
    minWP: 15,
    energy: 25,
    energyMaintainancePerTenSec: 4,
    isStackable: false,
    description: """This spell paralyzes the target, unless it makes its saving throw."""
  )

func createTempusFugit*: TempusFugit =
  TempusFugit(
    id: -1,
    name: "tempus fugit",
    college: Temporal,
    minLVL: 15,
    minWP: 18,
    energy: 40,
    energyMaintainancePerTenSec: 5,
    isStackable: false,
    description: """This spell adds +10 to the base speed of the caster and his entire group, while slowing down every other creature in the world. Only one instance of Tempus Fugit can be active in the Arcanum universe at a time."""
  )
