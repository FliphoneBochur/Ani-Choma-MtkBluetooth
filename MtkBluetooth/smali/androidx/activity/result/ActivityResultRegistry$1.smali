.class Landroidx/activity/result/ActivityResultRegistry$1;
.super Ljava/lang/Object;
.source "ActivityResultRegistry.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/result/ActivityResultRegistry;

.field final synthetic val$callback:Landroidx/activity/result/ActivityResultCallback;

.field final synthetic val$contract:Landroidx/activity/result/contract/ActivityResultContract;

.field final synthetic val$pendingResult:Landroidx/activity/result/ActivityResult;


# direct methods
.method constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/ActivityResultCallback;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResult;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/activity/result/ActivityResultRegistry;

    .line 119
    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$callback:Landroidx/activity/result/ActivityResultCallback;

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$pendingResult:Landroidx/activity/result/ActivityResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 124
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, p2}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$callback:Landroidx/activity/result/ActivityResultCallback;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$pendingResult:Landroidx/activity/result/ActivityResult;

    .line 126
    invoke-virtual {v2}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v2

    iget-object v3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$pendingResult:Landroidx/activity/result/ActivityResult;

    .line 127
    invoke-virtual {v3}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v3

    .line 125
    invoke-virtual {v1, v2, v3}, Landroidx/activity/result/contract/ActivityResultContract;->parseResult(ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    .line 129
    :cond_0
    return-void
.end method
