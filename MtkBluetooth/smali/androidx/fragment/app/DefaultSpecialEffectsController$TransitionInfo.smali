.class Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionInfo"
.end annotation


# instance fields
.field private final mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field private final mOverlapAllowed:Z

.field private final mSharedElementTransition:Ljava/lang/Object;

.field private final mSignal:Landroidx/core/os/CancellationSignal;

.field private final mTransition:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V
    .locals 2
    .param p1, "operation"    # Landroidx/fragment/app/SpecialEffectsController$Operation;
    .param p2, "signal"    # Landroidx/core/os/CancellationSignal;
    .param p3, "isPop"    # Z
    .param p4, "providesSharedElementTransition"    # Z

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 580
    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    .line 581
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getType()Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->ADD:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    if-eq v0, v1, :cond_2

    .line 582
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getType()Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->SHOW:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 592
    :cond_0
    if-eqz p3, :cond_1

    .line 593
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    goto :goto_4

    .line 583
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 584
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 585
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    .line 588
    if-eqz p3, :cond_4

    .line 589
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_3

    .line 590
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    :goto_3
    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    .line 598
    :goto_4
    if-eqz p4, :cond_6

    .line 599
    if-eqz p3, :cond_5

    .line 600
    nop

    .line 601
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    goto :goto_5

    .line 603
    :cond_5
    nop

    .line 604
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    goto :goto_5

    .line 607
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    .line 609
    :goto_5
    return-void
.end method

.method private getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 3
    .param p1, "transition"    # Ljava/lang/Object;

    .line 658
    if-nez p1, :cond_0

    .line 659
    const/4 v0, 0x0

    return-object v0

    .line 661
    :cond_0
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 662
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-object v0

    .line 665
    :cond_1
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 666
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-object v0

    .line 669
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 670
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getHandlingImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 5

    .line 641
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    .line 642
    .local v0, "transitionImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    .line 643
    invoke-direct {p0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v1

    .line 644
    .local v1, "sharedElementTransitionImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 648
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " returned Transition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 653
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;
    .locals 1

    .line 613
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    return-object v0
.end method

.method public getSharedElementTransition()Ljava/lang/Object;
    .locals 1

    .line 636
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    return-object v0
.end method

.method getSignal()Landroidx/core/os/CancellationSignal;
    .locals 1

    .line 618
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    return-object v0
.end method

.method getTransition()Ljava/lang/Object;
    .locals 1

    .line 623
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    return-object v0
.end method

.method public hasSharedElementTransition()Z
    .locals 1

    .line 631
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isOverlapAllowed()Z
    .locals 1

    .line 627
    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    return v0
.end method
