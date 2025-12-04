.class Landroidx/fragment/app/Fragment$7;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->prepareCallInternal(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/arch/core/util/Function;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/Fragment;

.field final synthetic val$callback:Landroidx/activity/result/ActivityResultCallback;

.field final synthetic val$contract:Landroidx/activity/result/contract/ActivityResultContract;

.field final synthetic val$ref:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$registryProvider:Landroidx/arch/core/util/Function;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/arch/core/util/Function;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/fragment/app/Fragment;

    .line 3357
    iput-object p1, p0, Landroidx/fragment/app/Fragment$7;->this$0:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/Fragment$7;->val$registryProvider:Landroidx/arch/core/util/Function;

    iput-object p3, p0, Landroidx/fragment/app/Fragment$7;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroidx/fragment/app/Fragment$7;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    iput-object p5, p0, Landroidx/fragment/app/Fragment$7;->val$callback:Landroidx/activity/result/ActivityResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 3361
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, p2}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3362
    iget-object v0, p0, Landroidx/fragment/app/Fragment$7;->this$0:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->generateActivityResultKey()Ljava/lang/String;

    move-result-object v0

    .line 3363
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroidx/fragment/app/Fragment$7;->val$registryProvider:Landroidx/arch/core/util/Function;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/result/ActivityResultRegistry;

    .line 3364
    .local v1, "registry":Landroidx/activity/result/ActivityResultRegistry;
    iget-object v2, p0, Landroidx/fragment/app/Fragment$7;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Landroidx/fragment/app/Fragment$7;->this$0:Landroidx/fragment/app/Fragment;

    iget-object v4, p0, Landroidx/fragment/app/Fragment$7;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    iget-object v5, p0, Landroidx/fragment/app/Fragment$7;->val$callback:Landroidx/activity/result/ActivityResultCallback;

    invoke-virtual {v1, v0, v3, v4, v5}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3366
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "registry":Landroidx/activity/result/ActivityResultRegistry;
    :cond_0
    return-void
.end method
