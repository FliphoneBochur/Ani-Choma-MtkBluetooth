.class Landroidx/fragment/app/SpecialEffectsController$Operation;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/SpecialEffectsController$Operation$Type;
    }
.end annotation


# instance fields
.field private final mCancellationSignal:Landroidx/core/os/CancellationSignal;

.field private final mCompletionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mType:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation$Type;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .locals 1
    .param p1, "type"    # Landroidx/fragment/app/SpecialEffectsController$Operation$Type;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "cancellationSignal"    # Landroidx/core/os/CancellationSignal;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mCompletionListeners:Ljava/util/List;

    .line 302
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mType:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    .line 303
    iput-object p2, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 304
    iput-object p3, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 305
    return-void
.end method


# virtual methods
.method final addCompletionListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 338
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mCompletionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    return-void
.end method

.method public complete()V
    .locals 2

    .line 347
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mCompletionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 348
    .local v1, "listener":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 349
    .end local v1    # "listener":Ljava/lang/Runnable;
    goto :goto_0

    .line 350
    :cond_0
    return-void
.end method

.method public final getCancellationSignal()Landroidx/core/os/CancellationSignal;
    .locals 1

    .line 334
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    return-object v0
.end method

.method public final getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 323
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final getType()Landroidx/fragment/app/SpecialEffectsController$Operation$Type;
    .locals 1

    .line 314
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mType:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    return-object v0
.end method
