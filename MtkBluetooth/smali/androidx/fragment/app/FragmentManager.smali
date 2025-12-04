.class public abstract Landroidx/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;,
        Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;,
        Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;,
        Landroidx/fragment/app/FragmentManager$PopBackStackState;,
        Landroidx/fragment/app/FragmentManager$OpGenerator;,
        Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;,
        Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;,
        Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;,
        Landroidx/fragment/app/FragmentManager$BackStackEntry;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final EXTRA_KEY_REQUEST_CODE:Ljava/lang/String; = "activity.result.requestCode"

.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static USE_STATE_MANAGER:Z


# instance fields
.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mContainer:Landroidx/fragment/app/FragmentContainer;

.field private mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field private mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

.field private mDestroyed:Z

.field private mExecCommit:Ljava/lang/Runnable;

.field private mExecutingActions:Z

.field private mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/HashSet<",
            "Landroidx/core/os/CancellationSignal;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

.field private final mFragmentStore:Landroidx/fragment/app/FragmentStore;

.field private final mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

.field private mHavePendingDeferredStart:Z

.field private mHost:Landroidx/fragment/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field

.field private mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

.field mLaunchedFragments:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

.field private final mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

.field private mNeedMenuInvalidate:Z

.field private mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

.field private final mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/FragmentOnAttachListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field private mParent:Landroidx/fragment/app/Fragment;

.field private final mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroidx/fragment/app/Fragment;

.field private mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mResults:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

.field private mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStateSaved:Z

.field private mStopped:Z

.field private mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/fragment/app/FragmentManager;->DEBUG:Z

    .line 98
    sput-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 399
    new-instance v0, Landroidx/fragment/app/FragmentStore;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentStore;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 402
    new-instance v0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentLayoutInflaterFactory;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    .line 405
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/FragmentManager$1;-><init>(Landroidx/fragment/app/FragmentManager;Z)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 413
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 415
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    .line 416
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 420
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    .line 422
    new-instance v0, Landroidx/fragment/app/FragmentManager$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    .line 437
    new-instance v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 439
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 442
    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    .line 450
    new-instance v1, Landroidx/fragment/app/FragmentManager$3;

    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentManager$3;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    .line 458
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    .line 459
    new-instance v0, Landroidx/fragment/app/FragmentManager$4;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$4;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    .line 475
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    .line 493
    new-instance v0, Landroidx/fragment/app/FragmentManager$5;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$5;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroidx/fragment/app/FragmentManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Landroidx/fragment/app/FragmentManager;

    .line 95
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/fragment/app/FragmentManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Landroidx/fragment/app/FragmentManager;

    .line 95
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentStore;
    .locals 1
    .param p0, "x0"    # Landroidx/fragment/app/FragmentManager;

    .line 95
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    return-object v0
.end method

.method private addAddedFragments(Landroidx/collection/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2385
    .local p1, "added":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2386
    return-void

    .line 2389
    :cond_0
    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2390
    .local v0, "state":I
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2391
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    iget v3, v2, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v3, v0, :cond_1

    .line 2392
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    .line 2393
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v3, :cond_1

    .line 2394
    invoke-virtual {p1, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2397
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_1
    goto :goto_0

    .line 2398
    :cond_2
    return-void
.end method

.method private cancelExitAnimation(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1440
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1441
    .local v0, "signals":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/core/os/CancellationSignal;>;"
    if-eqz v0, :cond_1

    .line 1442
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/os/CancellationSignal;

    .line 1443
    .local v2, "signal":Landroidx/core/os/CancellationSignal;
    invoke-virtual {v2}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 1444
    .end local v2    # "signal":Landroidx/core/os/CancellationSignal;
    goto :goto_0

    .line 1445
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1446
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->destroyFragmentView(Landroidx/fragment/app/Fragment;)V

    .line 1447
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    :cond_1
    return-void
.end method

.method private checkStateLoss()V
    .locals 2

    .line 1798
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1802
    return-void

    .line 1799
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanupExec()V
    .locals 1

    .line 1942
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 1943
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1944
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1945
    return-void
.end method

.method private collectAllSpecialEffectsController()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/SpecialEffectsController;",
            ">;"
        }
    .end annotation

    .line 2439
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2441
    .local v0, "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/fragment/app/SpecialEffectsController;>;"
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 2442
    .local v2, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2443
    .local v3, "container":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 2444
    nop

    .line 2445
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/SpecialEffectsControllerFactory;

    move-result-object v4

    .line 2444
    invoke-static {v3, v4}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/SpecialEffectsControllerFactory;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2447
    .end local v2    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v3    # "container":Landroid/view/ViewGroup;
    :cond_0
    goto :goto_0

    .line 2448
    :cond_1
    return-object v0
.end method

.method private collectChangedControllers(Ljava/util/ArrayList;II)Ljava/util/Set;
    .locals 8
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;II)",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/SpecialEffectsController;",
            ">;"
        }
    .end annotation

    .line 2169
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2170
    .local v0, "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/fragment/app/SpecialEffectsController;>;"
    move v1, p2

    .local v1, "index":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 2171
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 2172
    .local v2, "record":Landroidx/fragment/app/BackStackRecord;
    iget-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 2173
    .local v4, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    iget-object v5, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 2174
    .local v5, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v5, :cond_0

    .line 2175
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2176
    .local v6, "container":Landroid/view/ViewGroup;
    if-eqz v6, :cond_0

    .line 2177
    invoke-static {v6, p0}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2181
    .end local v4    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    .end local v5    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v6    # "container":Landroid/view/ViewGroup;
    :cond_0
    goto :goto_1

    .line 2170
    .end local v2    # "record":Landroidx/fragment/app/BackStackRecord;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2183
    .end local v1    # "index":I
    :cond_2
    return-object v0
.end method

.method private completeShowHideFragment(Landroidx/fragment/app/Fragment;)V
    .locals 7
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1491
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1492
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1493
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1492
    xor-int/2addr v3, v1

    invoke-static {v0, p1, v3}, Landroidx/fragment/app/FragmentAnim;->loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v0

    .line 1494
    .local v0, "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v3, :cond_2

    .line 1495
    iget-object v3, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1496
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_1

    .line 1497
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1498
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    goto :goto_0

    .line 1500
    :cond_0
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1501
    .local v3, "container":Landroid/view/ViewGroup;
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1502
    .local v4, "animatingView":Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1505
    iget-object v5, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v6, Landroidx/fragment/app/FragmentManager$7;

    invoke-direct {v6, p0, v3, v4, p1}, Landroidx/fragment/app/FragmentManager$7;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1515
    .end local v3    # "container":Landroid/view/ViewGroup;
    .end local v4    # "animatingView":Landroid/view/View;
    goto :goto_0

    .line 1517
    :cond_1
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1519
    :goto_0
    iget-object v3, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 1521
    :cond_2
    if-eqz v0, :cond_3

    .line 1522
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1523
    iget-object v3, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->start()V

    .line 1525
    :cond_3
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1526
    const/16 v3, 0x8

    goto :goto_1

    .line 1527
    :cond_4
    move v3, v2

    :goto_1
    nop

    .line 1528
    .local v3, "visibility":I
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1529
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1530
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 1534
    .end local v0    # "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .end local v3    # "visibility":I
    :cond_5
    :goto_2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1535
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1537
    :cond_6
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1538
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 1539
    return-void
.end method

.method private destroyFragmentView(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1465
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 1466
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 1467
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1468
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1471
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 1472
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 1473
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 1474
    return-void
.end method

.method private dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 3190
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3191
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    .line 3193
    :cond_0
    return-void
.end method

.method private dispatchStateChange(I)V
    .locals 5
    .param p1, "nextState"    # I

    .line 3044
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 3045
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentStore;->dispatchStateChange(I)V

    .line 3046
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    .line 3047
    sget-boolean v2, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v2, :cond_0

    .line 3048
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    move-result-object v2

    .line 3049
    .local v2, "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/fragment/app/SpecialEffectsController;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/SpecialEffectsController;

    .line 3050
    .local v4, "controller":Landroidx/fragment/app/SpecialEffectsController;
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController;->executePendingOperations()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3051
    .end local v4    # "controller":Landroidx/fragment/app/SpecialEffectsController;
    goto :goto_0

    .line 3054
    .end local v2    # "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/fragment/app/SpecialEffectsController;>;"
    :cond_0
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 3055
    nop

    .line 3056
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 3057
    return-void

    .line 3054
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 3055
    throw v0
.end method

.method private doPendingDeferredStart()V
    .locals 1

    .line 2480
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_0

    .line 2481
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 2482
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->startPendingDeferredFragments()V

    .line 2484
    :cond_0
    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0
    .param p0, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    sput-boolean p0, Landroidx/fragment/app/FragmentManager;->DEBUG:Z

    .line 111
    return-void
.end method

.method private endAnimatingAwayFragments()V
    .locals 3

    .line 2423
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v0, :cond_1

    .line 2424
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    move-result-object v0

    .line 2425
    .local v0, "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/fragment/app/SpecialEffectsController;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController;

    .line 2426
    .local v2, "controller":Landroidx/fragment/app/SpecialEffectsController;
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController;->cancelAllOperations()V

    .line 2427
    .end local v2    # "controller":Landroidx/fragment/app/SpecialEffectsController;
    goto :goto_0

    .line 2428
    .end local v0    # "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/fragment/app/SpecialEffectsController;>;"
    :cond_0
    goto :goto_2

    .line 2429
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2430
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2431
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->cancelExitAnimation(Landroidx/fragment/app/Fragment;)V

    .line 2432
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    .line 2433
    .end local v1    # "fragment":Landroidx/fragment/app/Fragment;
    goto :goto_1

    .line 2436
    :cond_2
    :goto_2
    return-void
.end method

.method private ensureExecReady(Z)V
    .locals 2
    .param p1, "allowStateLoss"    # Z

    .line 1885
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    if-nez v0, :cond_5

    .line 1889
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1

    .line 1890
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1891
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1893
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has not been attached to a host."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1897
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 1901
    if-nez p1, :cond_2

    .line 1902
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->checkStateLoss()V

    .line 1905
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 1907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 1909
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 1911
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, v1}, Landroidx/fragment/app/FragmentManager;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1913
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 1914
    nop

    .line 1915
    return-void

    .line 1913
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 1914
    throw v1

    .line 1898
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1886
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 5
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2322
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p1, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 2323
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 2324
    .local v1, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2325
    .local v2, "isPop":Z
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2326
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2329
    add-int/lit8 v4, p3, -0x1

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 2330
    .local v3, "moveToState":Z
    :goto_1
    invoke-virtual {v1, v3}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    .line 2331
    .end local v3    # "moveToState":Z
    goto :goto_2

    .line 2332
    :cond_1
    invoke-virtual {v1, v3}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2333
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    .line 2322
    .end local v1    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v2    # "isPop":Z
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2336
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 19
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2075
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move-object/from16 v5, p2

    move/from16 v4, p3

    move/from16 v3, p4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v2, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2076
    .local v2, "allowReordering":Z
    const/4 v0, 0x0

    .line 2077
    .local v0, "addToBackStack":Z
    iget-object v1, v6, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2078
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_0

    .line 2080
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2082
    :goto_0
    iget-object v1, v6, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v7, v6, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2083
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 2084
    .local v1, "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    move/from16 v7, p3

    move/from16 v16, v0

    .end local v0    # "addToBackStack":Z
    .local v7, "recordNum":I
    .local v16, "addToBackStack":Z
    :goto_1
    const/4 v0, 0x1

    if-ge v7, v3, :cond_4

    .line 2085
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    .line 2086
    .local v8, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 2087
    .local v9, "isPop":Z
    if-nez v9, :cond_1

    .line 2088
    iget-object v10, v6, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v8, v10, v1}, Landroidx/fragment/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    goto :goto_2

    .line 2090
    :cond_1
    iget-object v10, v6, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v8, v10, v1}, Landroidx/fragment/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 2092
    :goto_2
    if-nez v16, :cond_3

    iget-boolean v10, v8, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v10, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_3
    move/from16 v16, v0

    .line 2084
    .end local v8    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v9    # "isPop":Z
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2094
    .end local v7    # "recordNum":I
    :cond_4
    iget-object v7, v6, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2096
    if-nez v2, :cond_9

    iget v7, v6, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-lt v7, v0, :cond_9

    .line 2097
    sget-boolean v7, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v7, :cond_8

    .line 2100
    move/from16 v7, p3

    .local v7, "index":I
    :goto_4
    if-ge v7, v3, :cond_7

    .line 2101
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    .line 2102
    .restart local v8    # "record":Landroidx/fragment/app/BackStackRecord;
    iget-object v9, v8, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 2103
    .local v10, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    iget-object v11, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 2104
    .local v11, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v11, :cond_5

    .line 2105
    nop

    .line 2106
    invoke-virtual {v6, v11}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v12

    .line 2107
    .local v12, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    iget-object v13, v6, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v13, v12}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 2109
    .end local v10    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    .end local v11    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v12    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :cond_5
    goto :goto_5

    .line 2100
    .end local v8    # "record":Landroidx/fragment/app/BackStackRecord;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v7    # "index":I
    :cond_7
    goto :goto_6

    .line 2112
    :cond_8
    iget-object v7, v6, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v6, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    const/4 v13, 0x0

    iget-object v14, v6, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v7 .. v14}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V

    .line 2117
    :cond_9
    :goto_6
    invoke-static/range {p1 .. p4}, Landroidx/fragment/app/FragmentManager;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2119
    sget-boolean v7, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v7, :cond_c

    .line 2120
    if-eqz v2, :cond_a

    .line 2121
    iget v7, v6, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v6, v7, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    .line 2125
    :cond_a
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2126
    .local v0, "isPop":Z
    invoke-direct {v6, v15, v4, v3}, Landroidx/fragment/app/FragmentManager;->collectChangedControllers(Ljava/util/ArrayList;II)Ljava/util/Set;

    move-result-object v7

    .line 2128
    .local v7, "changedControllers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/fragment/app/SpecialEffectsController;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/SpecialEffectsController;

    .line 2129
    .local v9, "controller":Landroidx/fragment/app/SpecialEffectsController;
    invoke-virtual {v9, v0}, Landroidx/fragment/app/SpecialEffectsController;->updateOperationDirection(Z)V

    .line 2130
    invoke-virtual {v9}, Landroidx/fragment/app/SpecialEffectsController;->markPostponedState()V

    .line 2131
    invoke-virtual {v9}, Landroidx/fragment/app/SpecialEffectsController;->executePendingOperations()V

    .line 2132
    .end local v9    # "controller":Landroidx/fragment/app/SpecialEffectsController;
    goto :goto_7

    .line 2133
    .end local v0    # "isPop":Z
    .end local v7    # "changedControllers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/fragment/app/SpecialEffectsController;>;"
    :cond_b
    move-object/from16 v17, v1

    move/from16 v18, v2

    move v4, v3

    move-object v3, v5

    goto/16 :goto_a

    .line 2134
    :cond_c
    move/from16 v7, p4

    .line 2135
    .local v7, "postponeIndex":I
    if-eqz v2, :cond_d

    .line 2136
    new-instance v8, Landroidx/collection/ArraySet;

    invoke-direct {v8}, Landroidx/collection/ArraySet;-><init>()V

    .line 2137
    .local v8, "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    invoke-direct {v6, v8}, Landroidx/fragment/app/FragmentManager;->addAddedFragments(Landroidx/collection/ArraySet;)V

    .line 2138
    move v14, v0

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    .end local v1    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    .local v17, "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    move-object/from16 v1, p1

    move/from16 v18, v2

    .end local v2    # "allowReordering":Z
    .local v18, "allowReordering":Z
    move-object/from16 v2, p2

    move v13, v3

    move/from16 v3, p3

    move v12, v4

    move/from16 v4, p4

    move-object v11, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/FragmentManager;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I

    move-result v7

    .line 2140
    invoke-direct {v6, v8}, Landroidx/fragment/app/FragmentManager;->makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V

    move v0, v7

    goto :goto_8

    .line 2135
    .end local v8    # "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    .end local v17    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    .end local v18    # "allowReordering":Z
    .restart local v1    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    .restart local v2    # "allowReordering":Z
    :cond_d
    move v14, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move v13, v3

    move v12, v4

    move-object v11, v5

    .end local v1    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    .end local v2    # "allowReordering":Z
    .restart local v17    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    .restart local v18    # "allowReordering":Z
    move v0, v7

    .line 2143
    .end local v7    # "postponeIndex":I
    .local v0, "postponeIndex":I
    :goto_8
    if-eq v0, v12, :cond_f

    if-eqz v18, :cond_f

    .line 2145
    iget v1, v6, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-lt v1, v14, :cond_e

    .line 2146
    iget-object v1, v6, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v6, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    const/4 v1, 0x1

    iget-object v2, v6, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object v3, v11

    move/from16 v11, p3

    move v12, v0

    move v4, v13

    move v13, v1

    move v1, v14

    move-object v14, v2

    invoke-static/range {v7 .. v14}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V

    goto :goto_9

    .line 2145
    :cond_e
    move-object v3, v11

    move v4, v13

    move v1, v14

    .line 2150
    :goto_9
    iget v2, v6, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v6, v2, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    goto :goto_a

    .line 2143
    :cond_f
    move-object v3, v11

    move v4, v13

    .line 2154
    .end local v0    # "postponeIndex":I
    :goto_a
    move/from16 v0, p3

    .local v0, "recordNum":I
    :goto_b
    if-ge v0, v4, :cond_11

    .line 2155
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 2156
    .local v1, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2157
    .local v2, "isPop":Z
    if-eqz v2, :cond_10

    iget v5, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v5, :cond_10

    .line 2158
    const/4 v5, -0x1

    iput v5, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 2160
    :cond_10
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->runOnCommitRunnables()V

    .line 2154
    .end local v1    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v2    # "isPop":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2162
    .end local v0    # "recordNum":I
    :cond_11
    if-eqz v16, :cond_12

    .line 2163
    invoke-direct/range {p0 .. p0}, Landroidx/fragment/app/FragmentManager;->reportBackStackChanged()V

    .line 2165
    :cond_12
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1977
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1978
    .local v0, "numPostponed":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 1979
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;

    .line 1980
    .local v3, "listener":Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;
    const/4 v4, -0x1

    if-eqz p1, :cond_1

    iget-boolean v5, v3, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mIsBack:Z

    if-nez v5, :cond_1

    .line 1981
    iget-object v5, v3, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1982
    .local v5, "index":I
    if-eq v5, v4, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1983
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1984
    add-int/lit8 v2, v2, -0x1

    .line 1985
    add-int/lit8 v0, v0, -0x1

    .line 1986
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->cancelTransaction()V

    .line 1987
    goto :goto_2

    .line 1990
    .end local v5    # "index":I
    :cond_1
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->isReady()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_4

    iget-object v5, v3, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    .line 1991
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1992
    :cond_2
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1993
    add-int/lit8 v2, v2, -0x1

    .line 1994
    add-int/lit8 v0, v0, -0x1

    .line 1996
    if-eqz p1, :cond_3

    iget-boolean v5, v3, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mIsBack:Z

    if-nez v5, :cond_3

    iget-object v5, v3, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    .line 1997
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move v6, v5

    .local v6, "index":I
    if-eq v5, v4, :cond_3

    if-eqz p2, :cond_3

    .line 1999
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2001
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    .line 2003
    .end local v6    # "index":I
    :cond_3
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->completeTransaction()V

    .line 1978
    .end local v3    # "listener":Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2007
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public static findFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroid/view/View;",
            ")TF;"
        }
    .end annotation

    .line 953
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->findViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 954
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 957
    return-object v0

    .line 955
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not have a Fragment set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static findFragmentManager(Landroid/view/View;)Landroidx/fragment/app/FragmentManager;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 1003
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->findViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1007
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_1

    .line 1008
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1013
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .local v1, "fm":Landroidx/fragment/app/FragmentManager;
    goto :goto_2

    .line 1009
    .end local v1    # "fm":Landroidx/fragment/app/FragmentManager;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that owns View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has already been destroyed. Nested fragments should always use the child FragmentManager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1015
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1016
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 1017
    .local v2, "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    :goto_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_3

    .line 1018
    instance-of v3, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v3, :cond_2

    .line 1019
    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 1020
    goto :goto_1

    .line 1022
    :cond_2
    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 1024
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 1025
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    move-object v1, v3

    .line 1032
    .end local v2    # "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    .local v1, "fm":Landroidx/fragment/app/FragmentManager;
    :goto_2
    return-object v1

    .line 1027
    .local v1, "context":Landroid/content/Context;
    .restart local v2    # "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not within a subclass of FragmentActivity."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static findViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 967
    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 968
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->getViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 969
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_0

    .line 970
    return-object v1

    .line 972
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 973
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    :cond_1
    move-object p0, v0

    .line 974
    .end local v1    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v2    # "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 975
    :cond_2
    return-object v0
.end method

.method private forcePostponedTransactions()V
    .locals 3

    .line 2404
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v0, :cond_1

    .line 2405
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    move-result-object v0

    .line 2406
    .local v0, "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/fragment/app/SpecialEffectsController;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController;

    .line 2407
    .local v2, "controller":Landroidx/fragment/app/SpecialEffectsController;
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController;->forcePostponedExecutePendingOperations()V

    .line 2408
    .end local v2    # "controller":Landroidx/fragment/app/SpecialEffectsController;
    goto :goto_0

    .line 2409
    .end local v0    # "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/fragment/app/SpecialEffectsController;>;"
    :cond_0
    goto :goto_2

    .line 2410
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2411
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2412
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_1

    .line 2416
    :cond_2
    :goto_2
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2463
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 2464
    .local v0, "didSomething":Z
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2465
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2466
    const/4 v2, 0x0

    monitor-exit v1

    return v2

    .line 2469
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2470
    .local v2, "numActions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2471
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentManager$OpGenerator;

    invoke-interface {v4, p1, p2}, Landroidx/fragment/app/FragmentManager$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 2470
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2473
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2474
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2475
    .end local v2    # "numActions":I
    monitor-exit v1

    .line 2476
    return v0

    .line 2475
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;
    .locals 1
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1059
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v0

    return-object v0
.end method

.method private getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 2357
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2358
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    return-object v0

    .line 2361
    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 2362
    return-object v1

    .line 2368
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2369
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    iget v2, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2371
    .local v0, "view":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 2372
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    .line 2375
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    return-object v1
.end method

.method static getViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 985
    sget v0, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 986
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 987
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    return-object v1

    .line 989
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static isLoggingEnabled(I)Z
    .locals 1
    .param p0, "level"    # I

    .line 114
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMenuAvailable(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 3377
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->checkForMenus()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2194
    .local p1, "fragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->size()I

    move-result v0

    .line 2195
    .local v0, "numAdded":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2196
    invoke-virtual {p1, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2197
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v3, :cond_0

    .line 2198
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v3

    .line 2199
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2200
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2195
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2203
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .line 736
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 737
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    .line 739
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 742
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 743
    .local v1, "childManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 745
    return v0

    .line 749
    .end local v1    # "childManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Landroidx/fragment/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v1

    .line 750
    .local v1, "executePop":Z
    if-eqz v1, :cond_1

    .line 751
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 753
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 756
    goto :goto_0

    .line 755
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 756
    throw v0

    .line 759
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 760
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->doPendingDeferredStart()V

    .line 761
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->burpActive()V

    .line 762
    return v1
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I
    .locals 8
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .line 2220
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local p5, "added":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    move v0, p4

    .line 2221
    .local v0, "postponeIndex":I
    add-int/lit8 v1, p4, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, p3, :cond_5

    .line 2222
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 2223
    .local v2, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2224
    .local v3, "isPop":Z
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->isPostponed()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 2225
    invoke-virtual {v2, p1, v4, p4}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v5

    .line 2226
    .local v4, "isPostponed":Z
    :goto_1
    if-eqz v4, :cond_4

    .line 2227
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 2228
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2230
    :cond_1
    new-instance v6, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;

    invoke-direct {v6, v2, v3}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;-><init>(Landroidx/fragment/app/BackStackRecord;Z)V

    .line 2232
    .local v6, "listener":Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2233
    invoke-virtual {v2, v6}, Landroidx/fragment/app/BackStackRecord;->setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    .line 2236
    if-eqz v3, :cond_2

    .line 2237
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    goto :goto_2

    .line 2239
    :cond_2
    invoke-virtual {v2, v5}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    .line 2243
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 2244
    if-eq v1, v0, :cond_3

    .line 2245
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2246
    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2250
    :cond_3
    invoke-direct {p0, p5}, Landroidx/fragment/app/FragmentManager;->addAddedFragments(Landroidx/collection/ArraySet;)V

    .line 2221
    .end local v2    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v3    # "isPop":Z
    .end local v4    # "isPostponed":Z
    .end local v6    # "listener":Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2253
    .end local v1    # "i":I
    :cond_5
    return v0
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2025
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2026
    return-void

    .line 2029
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2034
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2036
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2037
    .local v0, "numRecords":I
    const/4 v1, 0x0

    .line 2038
    .local v1, "startIndex":I
    const/4 v2, 0x0

    .local v2, "recordNum":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2039
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v3, v3, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2040
    .local v3, "canReorder":Z
    if-nez v3, :cond_3

    .line 2042
    if-eq v1, v2, :cond_1

    .line 2043
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2047
    :cond_1
    add-int/lit8 v4, v2, 0x1

    .line 2048
    .local v4, "reorderingEnd":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2049
    :goto_1
    if-ge v4, v0, :cond_2

    .line 2050
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2051
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v5, v5, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_2

    .line 2052
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2055
    :cond_2
    invoke-direct {p0, p1, p2, v2, v4}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2056
    move v1, v4

    .line 2057
    add-int/lit8 v2, v4, -0x1

    .line 2038
    .end local v3    # "canReorder":Z
    .end local v4    # "reorderingEnd":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2060
    .end local v2    # "recordNum":I
    :cond_4
    if-eq v1, v0, :cond_5

    .line 2061
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2063
    :cond_5
    return-void

    .line 2030
    .end local v0    # "numRecords":I
    .end local v1    # "startIndex":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportBackStackChanged()V
    .locals 2

    .line 2487
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2489
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 2488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2492
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static reverseTransit(I)I
    .locals 2
    .param p0, "transit"    # I

    .line 3381
    const/4 v0, 0x0

    .line 3382
    .local v0, "rev":I
    const/16 v1, 0x1001

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1003

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2002

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 3387
    :cond_0
    const/16 v0, 0x1001

    .line 3388
    goto :goto_0

    .line 3390
    :cond_1
    const/16 v0, 0x1003

    goto :goto_0

    .line 3384
    :cond_2
    const/16 v0, 0x2002

    .line 3385
    nop

    .line 3393
    :goto_0
    return v0
.end method

.method private setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 2345
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 2346
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 2347
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2348
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 2350
    :cond_0
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2351
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 2353
    :cond_1
    return-void
.end method

.method private startPendingDeferredFragments()V
    .locals 2

    .line 1636
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 1637
    .local v1, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->performPendingDeferredStart(Landroidx/fragment/app/FragmentStateManager;)V

    .line 1638
    .end local v1    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    goto :goto_0

    .line 1639
    :cond_0
    return-void
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 8
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .line 501
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v0, Landroidx/fragment/app/LogWriter;

    invoke-direct {v0, v1}, Landroidx/fragment/app/LogWriter;-><init>(Ljava/lang/String;)V

    .line 504
    .local v0, "logw":Landroidx/fragment/app/LogWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 505
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    const-string v4, "Failed dumping state"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "  "

    if-eqz v3, :cond_0

    .line 507
    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v7, v6, v2, v5}, Landroidx/fragment/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v3

    .line 509
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 513
    :cond_0
    :try_start_1
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {p0, v7, v6, v2, v3}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 516
    goto :goto_1

    .line 514
    :catch_1
    move-exception v3

    .line 515
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    throw p1
.end method

.method private updateOnBackPressedCallbackEnabled()V
    .locals 3

    .line 581
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 583
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 584
    monitor-exit v0

    return-void

    .line 586
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 591
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 590
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 592
    return-void

    .line 586
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method addBackStackState(Landroidx/fragment/app/BackStackRecord;)V
    .locals 1
    .param p1, "state"    # Landroidx/fragment/app/BackStackRecord;

    .line 2495
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 2498
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2499
    return-void
.end method

.method addCancellationSignal(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .locals 2
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "signal"    # Landroidx/core/os/CancellationSignal;

    .line 805
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 806
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 809
    return-void
.end method

.method addFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1665
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v0

    .line 1667
    .local v0, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 1668
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_2

    .line 1669
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 1670
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1671
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1672
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1674
    :cond_1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1675
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1678
    :cond_2
    return-void
.end method

.method public addFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/fragment/app/FragmentOnAttachListener;

    .line 3335
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3336
    return-void
.end method

.method public addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 785
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 786
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 788
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    return-void
.end method

.method addRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1063
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->addRetainedFragment(Landroidx/fragment/app/Fragment;)V

    .line 1064
    return-void
.end method

.method allocBackStackIndex()I
    .locals 1

    .line 1875
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
    .locals 6
    .param p2, "container"    # Landroidx/fragment/app/FragmentContainer;
    .param p3, "parent"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;",
            "Landroidx/fragment/app/FragmentContainer;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 2754
    .local p1, "host":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<*>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_9

    .line 2755
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 2756
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 2757
    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 2761
    if-eqz p3, :cond_0

    .line 2762
    new-instance v0, Landroidx/fragment/app/FragmentManager$8;

    invoke-direct {v0, p0, p3}, Landroidx/fragment/app/FragmentManager$8;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V

    goto :goto_0

    .line 2770
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/FragmentOnAttachListener;

    if-eqz v0, :cond_1

    .line 2771
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentOnAttachListener;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V

    .line 2774
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 2778
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 2781
    :cond_2
    instance-of v0, p1, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz v0, :cond_4

    .line 2782
    move-object v0, p1

    check-cast v0, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 2783
    .local v0, "dispatcherOwner":Landroidx/activity/OnBackPressedDispatcherOwner;
    invoke-interface {v0}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 2784
    if-eqz p3, :cond_3

    move-object v1, p3

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 2785
    .local v1, "owner":Landroidx/lifecycle/LifecycleOwner;
    :goto_1
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v2, v1, v3}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 2789
    .end local v0    # "dispatcherOwner":Landroidx/activity/OnBackPressedDispatcherOwner;
    .end local v1    # "owner":Landroidx/lifecycle/LifecycleOwner;
    :cond_4
    if-eqz p3, :cond_5

    .line 2790
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {v0, p3}, Landroidx/fragment/app/FragmentManager;->getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    goto :goto_2

    .line 2791
    :cond_5
    instance-of v0, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_6

    .line 2792
    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    .line 2793
    .local v0, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    invoke-static {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 2794
    .end local v0    # "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    goto :goto_2

    .line 2795
    :cond_6
    new-instance v0, Landroidx/fragment/app/FragmentManagerViewModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 2798
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 2799
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->setNonConfig(Landroidx/fragment/app/FragmentManagerViewModel;)V

    .line 2801
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v1, v0, Landroidx/activity/result/ActivityResultRegistryOwner;

    if-eqz v1, :cond_8

    .line 2802
    check-cast v0, Landroidx/activity/result/ActivityResultRegistryOwner;

    .line 2803
    invoke-interface {v0}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    .line 2805
    .local v0, "registry":Landroidx/activity/result/ActivityResultRegistry;
    if-eqz p3, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    const-string v1, ""

    .line 2806
    .local v1, "parentId":Ljava/lang/String;
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FragmentManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2808
    .local v2, "keyPrefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "StartActivityForResult"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v4}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v5, Landroidx/fragment/app/FragmentManager$9;

    invoke-direct {v5, p0}, Landroidx/fragment/app/FragmentManager$9;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v3, v4, v5}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v3

    iput-object v3, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 2835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "StartIntentSenderForResult"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    invoke-direct {v4}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>()V

    new-instance v5, Landroidx/fragment/app/FragmentManager$10;

    invoke-direct {v5, p0}, Landroidx/fragment/app/FragmentManager$10;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v3, v4, v5}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v3

    iput-object v3, p0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 2863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "RequestPermissions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v4}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v5, Landroidx/fragment/app/FragmentManager$11;

    invoke-direct {v5, p0}, Landroidx/fragment/app/FragmentManager$11;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v3, v4, v5}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v3

    iput-object v3, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    .line 2898
    .end local v0    # "registry":Landroidx/activity/result/ActivityResultRegistry;
    .end local v1    # "parentId":Ljava/lang/String;
    .end local v2    # "keyPrefix":Ljava/lang/String;
    :cond_8
    return-void

    .line 2754
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method attachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1745
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_2

    .line 1747
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1748
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_2

    .line 1749
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 1750
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1752
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1756
    :cond_2
    return-void
.end method

.method public beginTransaction()Landroidx/fragment/app/FragmentTransaction;
    .locals 1

    .line 547
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method

.method checkForMenus()Z
    .locals 3

    .line 3364
    const/4 v0, 0x0

    .line 3365
    .local v0, "hasMenu":Z
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 3366
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_0

    .line 3367
    invoke-direct {p0, v2}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 3369
    :cond_0
    if-eqz v0, :cond_1

    .line 3370
    const/4 v1, 0x1

    return v1

    .line 3372
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3373
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public final clearFragmentResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "requestKey"    # Ljava/lang/String;

    .line 846
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    return-void
.end method

.method public final clearFragmentResultListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "requestKey"    # Ljava/lang/String;

    .line 890
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;

    .line 891
    .local v0, "listener":Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;
    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->removeObserver()V

    .line 894
    :cond_0
    return-void
.end method

.method completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V
    .locals 11
    .param p1, "record"    # Landroidx/fragment/app/BackStackRecord;
    .param p2, "isPop"    # Z
    .param p3, "runTransitions"    # Z
    .param p4, "moveToState"    # Z

    .line 2274
    if-eqz p2, :cond_0

    .line 2275
    invoke-virtual {p1, p4}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_0

    .line 2277
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    .line 2279
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2280
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v2

    .line 2281
    .local v10, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2282
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2283
    if-eqz p3, :cond_1

    iget v2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-lt v2, v1, :cond_1

    .line 2284
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v9, p0, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    move-object v4, v0

    move-object v5, v10

    invoke-static/range {v2 .. v9}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V

    .line 2288
    :cond_1
    if-eqz p4, :cond_2

    .line 2289
    iget v2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    .line 2292
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2295
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_5

    .line 2296
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v3, :cond_5

    iget v3, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 2297
    invoke-virtual {p1, v3}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2298
    iget v3, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 2299
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v5, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2301
    :cond_3
    if-eqz p4, :cond_4

    .line 2302
    iput v4, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    goto :goto_2

    .line 2304
    :cond_4
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2305
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 2309
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_5
    :goto_2
    goto :goto_1

    .line 2310
    :cond_6
    return-void
.end method

.method createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;
    .locals 4
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1651
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v0

    .line 1652
    .local v0, "existing":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v0, :cond_0

    .line 1653
    return-object v0

    .line 1655
    :cond_0
    new-instance v1, Landroidx/fragment/app/FragmentStateManager;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-direct {v1, v2, v3, p1}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V

    .line 1658
    .local v1, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentStateManager;->restoreState(Ljava/lang/ClassLoader;)V

    .line 1660
    iget v2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 1661
    return-object v1
.end method

.method detachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1729
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_3

    .line 1731
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1732
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_3

    .line 1734
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->removeFragment(Landroidx/fragment/app/Fragment;)V

    .line 1736
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1737
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1739
    :cond_2
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    .line 1742
    :cond_3
    return-void
.end method

.method dispatchActivityCreated()V
    .locals 2

    .line 2987
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 2988
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 2989
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 2990
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 2991
    return-void
.end method

.method dispatchAttach()V
    .locals 2

    .line 2969
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 2970
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 2971
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 2972
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 2973
    return-void
.end method

.method dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3076
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3077
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_0

    .line 3078
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3080
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_0
    goto :goto_0

    .line 3081
    :cond_1
    return-void
.end method

.method dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3153
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3154
    return v1

    .line 3156
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 3157
    .local v3, "f":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_1

    .line 3158
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3159
    return v2

    .line 3162
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3163
    :cond_2
    return v1
.end method

.method dispatchCreate()V
    .locals 2

    .line 2976
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 2977
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 2978
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 2979
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 2980
    return-void
.end method

.method dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 3092
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 3093
    const/4 v0, 0x0

    return v0

    .line 3095
    :cond_0
    const/4 v0, 0x0

    .line 3096
    .local v0, "show":Z
    const/4 v1, 0x0

    .line 3097
    .local v1, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 3098
    .local v3, "f":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_2

    .line 3099
    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManager;->isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3100
    const/4 v0, 0x1

    .line 3101
    if-nez v1, :cond_1

    .line 3102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 3104
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3107
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    goto :goto_0

    .line 3109
    :cond_3
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 3110
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 3111
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 3112
    .restart local v3    # "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3113
    :cond_4
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 3110
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3118
    .end local v2    # "i":I
    :cond_6
    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 3120
    return v0
.end method

.method dispatchDestroy()V
    .locals 2

    .line 3022
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 3023
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 3024
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->endAnimatingAwayFragments()V

    .line 3025
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 3026
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3027
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 3028
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 3029
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_0

    .line 3032
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 3033
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 3035
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_1

    .line 3036
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 3037
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 3038
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 3040
    :cond_1
    return-void
.end method

.method dispatchDestroyView()V
    .locals 1

    .line 3018
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 3019
    return-void
.end method

.method dispatchLowMemory()V
    .locals 2

    .line 3084
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3085
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_0

    .line 3086
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    .line 3088
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_0
    goto :goto_0

    .line 3089
    :cond_1
    return-void
.end method

.method dispatchMultiWindowModeChanged(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .line 3060
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3061
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_0

    .line 3062
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 3064
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_0
    goto :goto_0

    .line 3065
    :cond_1
    return-void
.end method

.method dispatchOnAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 3345
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentOnAttachListener;

    .line 3346
    .local v1, "listener":Landroidx/fragment/app/FragmentOnAttachListener;
    invoke-interface {v1, p0, p1}, Landroidx/fragment/app/FragmentOnAttachListener;->onAttachFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3347
    .end local v1    # "listener":Landroidx/fragment/app/FragmentOnAttachListener;
    goto :goto_0

    .line 3348
    :cond_0
    return-void
.end method

.method dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3139
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3140
    return v1

    .line 3142
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 3143
    .local v3, "f":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_1

    .line 3144
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3145
    return v2

    .line 3148
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3149
    :cond_2
    return v1
.end method

.method dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3167
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 3168
    return-void

    .line 3170
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3171
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_1

    .line 3172
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3174
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3175
    :cond_2
    return-void
.end method

.method dispatchPause()V
    .locals 1

    .line 3008
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 3009
    return-void
.end method

.method dispatchPictureInPictureModeChanged(Z)V
    .locals 2
    .param p1, "isInPictureInPictureMode"    # Z

    .line 3068
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3069
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_0

    .line 3070
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 3072
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_0
    goto :goto_0

    .line 3073
    :cond_1
    return-void
.end method

.method dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3124
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 3125
    const/4 v0, 0x0

    return v0

    .line 3127
    :cond_0
    const/4 v0, 0x0

    .line 3128
    .local v0, "show":Z
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 3129
    .local v2, "f":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_1

    .line 3130
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3131
    const/4 v0, 0x1

    .line 3134
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3135
    :cond_2
    return v0
.end method

.method dispatchPrimaryNavigationFragmentChanged()V
    .locals 1

    .line 3196
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 3198
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 3199
    return-void
.end method

.method dispatchResume()V
    .locals 2

    .line 3001
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 3002
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 3003
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 3004
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 3005
    return-void
.end method

.method dispatchStart()V
    .locals 2

    .line 2994
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 2995
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 2996
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 2997
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 2998
    return-void
.end method

.method dispatchStop()V
    .locals 2

    .line 3012
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 3013
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 3014
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 3015
    return-void
.end method

.method dispatchViewCreated()V
    .locals 1

    .line 2983
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 2984
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentStore;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1172
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1173
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1174
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 1175
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Fragments Created Menus:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1177
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 1178
    .local v3, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1179
    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1181
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1187
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1188
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1189
    .restart local v1    # "count":I
    if-lez v1, :cond_1

    .line 1190
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Back Stack:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1192
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 1193
    .local v3, "bs":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1194
    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1196
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {v3}, Landroidx/fragment/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v3, v0, p3}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1191
    .end local v3    # "bs":Landroidx/fragment/app/BackStackRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1203
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Back Stack Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1207
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1208
    .local v2, "count":I
    if-lez v2, :cond_2

    .line 1209
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Pending Actions:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1210
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 1211
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentManager$OpGenerator;

    .line 1212
    .local v4, "r":Landroidx/fragment/app/FragmentManager$OpGenerator;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1213
    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1215
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1210
    .end local v4    # "r":Landroidx/fragment/app/FragmentManager$OpGenerator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1219
    .end local v3    # "i":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1222
    const-string v1, "FragmentManager misc state:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1224
    const-string v1, "  mHost="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1225
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1226
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1227
    const-string v1, "  mContainer="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1228
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1229
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_3

    .line 1230
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1231
    const-string v1, "  mParent="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1232
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1234
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1235
    const-string v1, "  mCurState="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1236
    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1237
    const-string v1, " mStateSaved="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1239
    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1240
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1241
    const-string v1, " mDestroyed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1242
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1243
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    if-eqz v1, :cond_4

    .line 1244
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    const-string v1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1246
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1248
    :cond_4
    return-void

    .line 1219
    .end local v2    # "count":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V
    .locals 3
    .param p1, "action"    # Landroidx/fragment/app/FragmentManager$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 1830
    if-nez p2, :cond_2

    .line 1831
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1

    .line 1832
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1833
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1835
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has not been attached to a host."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1839
    :cond_1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->checkStateLoss()V

    .line 1841
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1842
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v1, :cond_4

    .line 1843
    if-eqz p2, :cond_3

    .line 1845
    monitor-exit v0

    return-void

    .line 1847
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Activity has been destroyed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroidx/fragment/app/FragmentManager;
    .end local p1    # "action":Landroidx/fragment/app/FragmentManager$OpGenerator;
    .end local p2    # "allowStateLoss":Z
    throw v1

    .line 1849
    .restart local p0    # "this":Landroidx/fragment/app/FragmentManager;
    .restart local p1    # "action":Landroidx/fragment/app/FragmentManager$OpGenerator;
    .restart local p2    # "allowStateLoss":Z
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1850
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->scheduleCommit()V

    .line 1851
    monitor-exit v0

    .line 1852
    return-void

    .line 1851
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method execPendingActions(Z)Z
    .locals 3
    .param p1, "allowStateLoss"    # Z

    .line 1951
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    .line 1953
    const/4 v0, 0x0

    .line 1954
    .local v0, "didSomething":Z
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/FragmentManager;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1955
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 1957
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1959
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 1960
    nop

    .line 1961
    const/4 v0, 0x1

    goto :goto_0

    .line 1959
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 1960
    throw v1

    .line 1964
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 1965
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->doPendingDeferredStart()V

    .line 1966
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->burpActive()V

    .line 1968
    return v0
.end method

.method execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V
    .locals 2
    .param p1, "action"    # Landroidx/fragment/app/FragmentManager$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 1918
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 1920
    :cond_0
    return-void

    .line 1922
    :cond_1
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    .line 1923
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Landroidx/fragment/app/FragmentManager$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1924
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 1926
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 1929
    goto :goto_0

    .line 1928
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 1929
    throw v0

    .line 1932
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 1933
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->doPendingDeferredStart()V

    .line 1934
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->burpActive()V

    .line 1935
    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    .line 572
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    move-result v0

    .line 573
    .local v0, "updates":Z
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->forcePostponedTransactions()V

    .line 574
    return v0
.end method

.method findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 1794
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findFragmentById(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "id"    # I

    .line 1768
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 1785
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 1789
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method getActiveFragmentCount()I
    .locals 1

    .line 1087
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentCount()I

    move-result v0

    return v0
.end method

.method getActiveFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .line 778
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .line 769
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getContainer()Landroidx/fragment/app/FragmentContainer;
    .locals 1

    .line 2742
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    return-object v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 926
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "who":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 928
    const/4 v1, 0x0

    return-object v1

    .line 930
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 931
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-nez v1, :cond_1

    .line 932
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": unique id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 935
    :cond_1
    return-object v1
.end method

.method public getFragmentFactory()Landroidx/fragment/app/FragmentFactory;
    .locals 1

    .line 3252
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    if-eqz v0, :cond_0

    .line 3253
    return-object v0

    .line 3255
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 3260
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    return-object v0

    .line 3262
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    return-object v0
.end method

.method getFragmentStore()Landroidx/fragment/app/FragmentStore;
    .locals 1

    .line 2747
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1049
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getHost()Landroidx/fragment/app/FragmentHostCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation

    .line 2732
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 1

    .line 3399
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    return-object v0
.end method

.method getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;
    .locals 1

    .line 3300
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    return-object v0
.end method

.method getParent()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 2737
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 3215
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method getSpecialEffectsControllerFactory()Landroidx/fragment/app/SpecialEffectsControllerFactory;
    .locals 1

    .line 3285
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    if-eqz v0, :cond_0

    .line 3286
    return-object v0

    .line 3288
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 3293
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/SpecialEffectsControllerFactory;

    move-result-object v0

    return-object v0

    .line 3295
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    return-object v0
.end method

.method getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;
    .locals 1
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1054
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method

.method handleOnBackPressed()V
    .locals 1

    .line 633
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 634
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 646
    :goto_0
    return-void
.end method

.method hideFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1702
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 1704
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1707
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1708
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    .line 1710
    :cond_1
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1128
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    return v0
.end method

.method isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p1, "parent"    # Landroidx/fragment/app/Fragment;

    .line 620
    if-nez p1, :cond_0

    .line 621
    const/4 v0, 0x1

    return v0

    .line 624
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result v0

    return v0
.end method

.method isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z
    .locals 4
    .param p1, "parent"    # Landroidx/fragment/app/Fragment;

    .line 602
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 603
    return v0

    .line 605
    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 606
    .local v1, "parentFragmentManager":Landroidx/fragment/app/FragmentManager;
    nop

    .line 607
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 611
    .local v2, "primaryNavigationFragment":Landroidx/fragment/app/Fragment;
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 612
    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 611
    :goto_0
    return v0
.end method

.method isStateAtLeast(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 1268
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateSaved()Z
    .locals 1

    .line 1819
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method launchRequestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 2959
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_0

    .line 2960
    new-instance v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    .line 2961
    .local v0, "info":Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2962
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 2963
    .end local v0    # "info":Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;
    goto :goto_0

    .line 2964
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    .line 2966
    :goto_0
    return-void
.end method

.method launchStartActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 2920
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_1

    .line 2921
    new-instance v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    .line 2922
    .local v0, "info":Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2923
    if-eqz p4, :cond_0

    .line 2924
    const-string v1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {p2, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2926
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 2927
    .end local v0    # "info":Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;
    goto :goto_0

    .line 2928
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 2930
    :goto_0
    return-void
.end method

.method launchStartIntentSenderForResult(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 16
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 2937
    move-object/from16 v0, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p8

    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v1, :cond_2

    .line 2938
    new-instance v1, Landroidx/activity/result/IntentSenderRequest$Builder;

    move-object/from16 v12, p2

    invoke-direct {v1, v12}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    .line 2939
    invoke-virtual {v1, v10}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFillInIntent(Landroid/content/Intent;)Landroidx/activity/result/IntentSenderRequest$Builder;

    move-result-object v1

    .line 2940
    move/from16 v13, p5

    move/from16 v14, p6

    invoke-virtual {v1, v14, v13}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFlags(II)Landroidx/activity/result/IntentSenderRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object v1

    .line 2941
    .local v1, "request":Landroidx/activity/result/IntentSenderRequest;
    if-eqz v11, :cond_1

    .line 2942
    if-nez v10, :cond_0

    .line 2943
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object v10, v2

    .line 2945
    .end local p4    # "fillInIntent":Landroid/content/Intent;
    .local v10, "fillInIntent":Landroid/content/Intent;
    :cond_0
    const-string v2, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v10, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2947
    :cond_1
    new-instance v2, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    move-object/from16 v15, p1

    iget-object v3, v15, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    move/from16 v9, p3

    invoke-direct {v2, v3, v9}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    .line 2948
    .local v2, "info":Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;
    iget-object v3, v0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2949
    iget-object v3, v0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v3, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 2950
    .end local v1    # "request":Landroidx/activity/result/IntentSenderRequest;
    .end local v2    # "info":Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;
    goto :goto_0

    .line 2951
    .end local v10    # "fillInIntent":Landroid/content/Intent;
    .restart local p4    # "fillInIntent":Landroid/content/Intent;
    :cond_2
    move-object/from16 v15, p1

    move-object/from16 v12, p2

    move/from16 v9, p3

    move/from16 v13, p5

    move/from16 v14, p6

    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroidx/fragment/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 2954
    .end local p4    # "fillInIntent":Landroid/content/Intent;
    .restart local v10    # "fillInIntent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1548
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->containsActiveFragment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1549
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "since it is not added to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_0
    return-void

    .line 1555
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    .line 1557
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1558
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 1560
    iget v0, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1561
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v2, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1563
    :cond_2
    iput v1, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1564
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 1566
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1567
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 1566
    invoke-static {v0, p1, v1}, Landroidx/fragment/app/FragmentAnim;->loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v0

    .line 1568
    .local v0, "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    if-eqz v0, :cond_4

    .line 1569
    iget-object v1, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_3

    .line 1570
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1572
    :cond_3
    iget-object v1, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1573
    iget-object v1, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 1578
    .end local v0    # "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    :cond_4
    :goto_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_5

    .line 1579
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->completeShowHideFragment(Landroidx/fragment/app/Fragment;)V

    .line 1581
    :cond_5
    return-void
.end method

.method moveToState(IZ)V
    .locals 6
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .line 1593
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1594
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1597
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-ne p1, v0, :cond_2

    .line 1598
    return-void

    .line 1601
    :cond_2
    iput p1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 1603
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1604
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->moveToExpectedState()V

    goto :goto_4

    .line 1607
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 1608
    .local v2, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 1609
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    goto :goto_1

    .line 1614
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 1615
    .local v2, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 1616
    .local v3, "f":Landroidx/fragment/app/Fragment;
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-nez v4, :cond_5

    .line 1617
    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 1619
    :cond_5
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    move v4, v1

    .line 1620
    .local v4, "beingRemoved":Z
    :goto_3
    if-eqz v4, :cond_7

    .line 1621
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v5, v2}, Landroidx/fragment/app/FragmentStore;->makeInactive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 1623
    .end local v2    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    .end local v4    # "beingRemoved":Z
    :cond_7
    goto :goto_2

    .line 1626
    :cond_8
    :goto_4
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->startPendingDeferredFragments()V

    .line 1628
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_9

    iget v2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_9

    .line 1629
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1630
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1632
    :cond_9
    return-void
.end method

.method moveToState(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1477
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    .line 1478
    return-void
.end method

.method moveToState(Landroidx/fragment/app/Fragment;I)V
    .locals 10
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "newState"    # I

    .line 1273
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v0

    .line 1274
    .local v0, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1279
    new-instance v2, Landroidx/fragment/app/FragmentStateManager;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-direct {v2, v3, v4, p1}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V

    move-object v0, v2

    .line 1282
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 1292
    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v2, :cond_1

    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-ne v2, v3, :cond_1

    .line 1293
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1295
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->computeExpectedState()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1296
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    const-string v4, "FragmentManager"

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-gt v2, p2, :cond_b

    .line 1298
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v2, p2, :cond_2

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1302
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->cancelExitAnimation(Landroidx/fragment/app/Fragment;)V

    .line 1304
    :cond_2
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v2, v6, :cond_3

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_5

    if-eq v2, v3, :cond_7

    if-eq v2, v8, :cond_8

    if-eq v2, v7, :cond_9

    goto :goto_0

    .line 1306
    :cond_3
    if-le p2, v6, :cond_4

    .line 1307
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->attach()V

    .line 1311
    :cond_4
    if-lez p2, :cond_5

    .line 1312
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->create()V

    .line 1319
    :cond_5
    if-le p2, v6, :cond_6

    .line 1320
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->ensureInflatedView()V

    .line 1323
    :cond_6
    if-le p2, v1, :cond_7

    .line 1324
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->createView()V

    .line 1328
    :cond_7
    if-le p2, v3, :cond_8

    .line 1329
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->activityCreated()V

    .line 1333
    :cond_8
    if-le p2, v8, :cond_9

    .line 1334
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->start()V

    .line 1338
    :cond_9
    if-le p2, v7, :cond_a

    .line 1339
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->resume()V

    :cond_a
    :goto_0
    goto/16 :goto_2

    .line 1342
    :cond_b
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-le v2, p2, :cond_17

    .line 1343
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-eqz v2, :cond_16

    if-eq v2, v1, :cond_14

    if-eq v2, v3, :cond_10

    if-eq v2, v8, :cond_e

    if-eq v2, v7, :cond_d

    const/4 v9, 0x7

    if-eq v2, v9, :cond_c

    goto/16 :goto_2

    .line 1345
    :cond_c
    if-ge p2, v9, :cond_d

    .line 1346
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->pause()V

    .line 1350
    :cond_d
    if-ge p2, v7, :cond_e

    .line 1351
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->stop()V

    .line 1355
    :cond_e
    if-ge p2, v8, :cond_10

    .line 1356
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_f
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_10

    .line 1362
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v2, :cond_10

    .line 1363
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->saveViewState()V

    .line 1369
    :cond_10
    if-ge p2, v3, :cond_14

    .line 1370
    const/4 v2, 0x0

    .line 1371
    .local v2, "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_13

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_13

    .line 1373
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v7, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1374
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1376
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemovingParent()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1377
    iget v3, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v7, 0x0

    if-le v3, v6, :cond_11

    iget-boolean v3, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-nez v3, :cond_11

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1378
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_11

    iget v3, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_11

    .line 1380
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, p1, v6}, Landroidx/fragment/app/FragmentAnim;->loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v2

    .line 1383
    :cond_11
    iput v7, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1387
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1388
    .local v3, "container":Landroid/view/ViewGroup;
    iget-object v6, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1389
    .local v6, "view":Landroid/view/View;
    if-eqz v2, :cond_12

    .line 1390
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    invoke-static {p1, v2, v7}, Landroidx/fragment/app/FragmentAnim;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;Landroidx/fragment/app/FragmentTransition$Callback;)V

    .line 1393
    :cond_12
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1399
    iget-object v7, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eq v3, v7, :cond_13

    .line 1400
    return-void

    .line 1406
    .end local v3    # "container":Landroid/view/ViewGroup;
    .end local v6    # "view":Landroid/view/View;
    :cond_13
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_14

    .line 1407
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->destroyFragmentView()V

    .line 1412
    .end local v2    # "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    :cond_14
    if-ge p2, v1, :cond_16

    .line 1413
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1415
    const/4 p2, 0x1

    goto :goto_1

    .line 1417
    :cond_15
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->destroy()V

    .line 1422
    :cond_16
    :goto_1
    if-gez p2, :cond_17

    .line 1423
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->detach()V

    .line 1428
    :cond_17
    :goto_2
    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v1, p2, :cond_19

    .line 1429
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToState: Fragment state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_18
    iput p2, p1, Landroidx/fragment/app/Fragment;->mState:I

    .line 1435
    :cond_19
    return-void
.end method

.method noteStateNotSaved()V
    .locals 2

    .line 2904
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    .line 2905
    return-void

    .line 2907
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 2908
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 2909
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 2910
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2911
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_1

    .line 2912
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    .line 2914
    .end local v1    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_1
    goto :goto_0

    .line 2915
    :cond_2
    return-void
.end method

.method public openTransaction()Landroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 529
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method performPendingDeferredStart(Landroidx/fragment/app/FragmentStateManager;)V
    .locals 2
    .param p1, "fragmentStateManager"    # Landroidx/fragment/app/FragmentStateManager;

    .line 1251
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1252
    .local v0, "f":Landroidx/fragment/app/Fragment;
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v1, :cond_2

    .line 1253
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    if-eqz v1, :cond_0

    .line 1255
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 1256
    return-void

    .line 1258
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1259
    sget-boolean v1, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v1, :cond_1

    .line 1260
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    goto :goto_0

    .line 1262
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    .line 1265
    :cond_2
    :goto_0
    return-void
.end method

.method public popBackStack()V
    .locals 4

    .line 654
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 655
    return-void
.end method

.method public popBackStack(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 709
    if-ltz p1, :cond_0

    .line 712
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 713
    return-void

    .line 710
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 681
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 682
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 3

    .line 664
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 722
    if-ltz p1, :cond_0

    .line 725
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 723
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 691
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2504
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2505
    return v1

    .line 2507
    :cond_0
    const/4 v2, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_2

    .line 2508
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .line 2509
    .local v0, "last":I
    if-gez v0, :cond_1

    .line 2510
    return v1

    .line 2512
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2513
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2514
    .end local v0    # "last":I
    goto/16 :goto_4

    .line 2515
    :cond_2
    const/4 v0, -0x1

    .line 2516
    .local v0, "index":I
    if-nez p3, :cond_3

    if-ltz p4, :cond_a

    .line 2519
    :cond_3
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    move v0, v3

    .line 2520
    :goto_0
    if-ltz v0, :cond_6

    .line 2521
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 2522
    .local v3, "bss":Landroidx/fragment/app/BackStackRecord;
    if-eqz p3, :cond_4

    invoke-virtual {v3}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2523
    goto :goto_1

    .line 2525
    :cond_4
    if-ltz p4, :cond_5

    iget v4, v3, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_5

    .line 2526
    goto :goto_1

    .line 2528
    :cond_5
    nop

    .end local v3    # "bss":Landroidx/fragment/app/BackStackRecord;
    add-int/lit8 v0, v0, -0x1

    .line 2529
    goto :goto_0

    .line 2530
    :cond_6
    :goto_1
    if-gez v0, :cond_7

    .line 2531
    return v1

    .line 2533
    :cond_7
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_a

    .line 2534
    add-int/lit8 v0, v0, -0x1

    .line 2536
    :goto_2
    if-ltz v0, :cond_a

    .line 2537
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 2538
    .restart local v3    # "bss":Landroidx/fragment/app/BackStackRecord;
    if-eqz p3, :cond_8

    invoke-virtual {v3}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    if-ltz p4, :cond_a

    iget v4, v3, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_a

    .line 2540
    :cond_9
    add-int/lit8 v0, v0, -0x1

    .line 2541
    goto :goto_2

    .line 2547
    .end local v3    # "bss":Landroidx/fragment/app/BackStackRecord;
    :cond_a
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_b

    .line 2548
    return v1

    .line 2550
    :cond_b
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_3
    if-le v1, v0, :cond_c

    .line 2551
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2552
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2550
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2555
    .end local v0    # "index":I
    .end local v1    # "i":I
    :cond_c
    :goto_4
    return v2
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 908
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eq v0, p0, :cond_0

    .line 909
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 912
    :cond_0
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 1
    .param p1, "cb"    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
    .param p2, "recursive"    # Z

    .line 3313
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 3314
    return-void
.end method

.method removeCancellationSignal(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .locals 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "signal"    # Landroidx/core/os/CancellationSignal;

    .line 819
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 820
    .local v0, "signals":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/core/os/CancellationSignal;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 825
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->destroyFragmentView(Landroidx/fragment/app/Fragment;)V

    .line 826
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    .line 829
    :cond_0
    return-void
.end method

.method removeFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1681
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1685
    .local v0, "inactive":Z
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 1686
    :cond_1
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentStore;->removeFragment(Landroidx/fragment/app/Fragment;)V

    .line 1687
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1688
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1690
    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1691
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    .line 1693
    :cond_3
    return-void
.end method

.method public removeFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/fragment/app/FragmentOnAttachListener;

    .line 3358
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3359
    return-void
.end method

.method public removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 796
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 799
    :cond_0
    return-void
.end method

.method removeRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1067
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    .line 1068
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 2624
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_0

    .line 2625
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 2628
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentManagerViewModel;->restoreFromSnapshot(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 2629
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->restoreSaveState(Landroid/os/Parcelable;)V

    .line 2630
    return-void
.end method

.method restoreSaveState(Landroid/os/Parcelable;)V
    .locals 14
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2634
    if-nez p1, :cond_0

    return-void

    .line 2635
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentManagerState;

    .line 2636
    .local v0, "fms":Landroidx/fragment/app/FragmentManagerState;
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    return-void

    .line 2640
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->resetActiveFragments()V

    .line 2641
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "): "

    const/4 v4, 0x2

    const-string v5, "FragmentManager"

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentState;

    .line 2642
    .local v2, "fs":Landroidx/fragment/app/FragmentState;
    if-eqz v2, :cond_5

    .line 2644
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    iget-object v7, v2, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentManagerViewModel;->findRetainedFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v12

    .line 2645
    .local v12, "retainedFragment":Landroidx/fragment/app/Fragment;
    if-eqz v12, :cond_3

    .line 2646
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2647
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreSaveState: re-attaching retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :cond_2
    new-instance v6, Landroidx/fragment/app/FragmentStateManager;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-direct {v6, v7, v8, v12, v2}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V

    .local v6, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    goto :goto_1

    .line 2653
    .end local v6    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :cond_3
    new-instance v13, Landroidx/fragment/app/FragmentStateManager;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 2654
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 2655
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v10

    move-object v6, v13

    move-object v11, v2

    invoke-direct/range {v6 .. v11}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;Landroidx/fragment/app/FragmentState;)V

    .line 2657
    .restart local v6    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :goto_1
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v7

    .line 2658
    .local v7, "f":Landroidx/fragment/app/Fragment;
    iput-object p0, v7, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2659
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreSaveState: active ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    :cond_4
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/fragment/app/FragmentStateManager;->restoreState(Ljava/lang/ClassLoader;)V

    .line 2663
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v3, v6}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 2667
    iget v3, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v6, v3}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 2669
    .end local v2    # "fs":Landroidx/fragment/app/FragmentState;
    .end local v6    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v7    # "f":Landroidx/fragment/app/Fragment;
    .end local v12    # "retainedFragment":Landroidx/fragment/app/Fragment;
    :cond_5
    goto/16 :goto_0

    .line 2673
    :cond_6
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerViewModel;->getRetainedFragments()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2674
    .local v2, "f":Landroidx/fragment/app/Fragment;
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v7, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentStore;->containsActiveFragment(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 2675
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discarding retained Fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " that was not found in the set of active Fragments "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    :cond_7
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v6, v2}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    .line 2683
    iput-object p0, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2684
    new-instance v6, Landroidx/fragment/app/FragmentStateManager;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-direct {v6, v7, v8, v2}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V

    .line 2686
    .restart local v6    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 2687
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 2688
    iput-boolean v7, v2, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 2689
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 2691
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    .end local v6    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :cond_8
    goto :goto_2

    .line 2694
    :cond_9
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentStore;->restoreAddedFragments(Ljava/util/List;)V

    .line 2697
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    if-eqz v1, :cond_c

    .line 2698
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 2699
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 2700
    iget-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Landroidx/fragment/app/BackStackState;->instantiate(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v2

    .line 2701
    .local v2, "bse":Landroidx/fragment/app/BackStackRecord;
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2702
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: back stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    new-instance v6, Landroidx/fragment/app/LogWriter;

    invoke-direct {v6, v5}, Landroidx/fragment/app/LogWriter;-><init>(Ljava/lang/String;)V

    .line 2705
    .local v6, "logw":Landroidx/fragment/app/LogWriter;
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2706
    .local v7, "pw":Ljava/io/PrintWriter;
    const/4 v8, 0x0

    const-string v9, "  "

    invoke-virtual {v2, v9, v7, v8}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2707
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 2709
    .end local v6    # "logw":Landroidx/fragment/app/LogWriter;
    .end local v7    # "pw":Ljava/io/PrintWriter;
    :cond_a
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2699
    .end local v2    # "bse":Landroidx/fragment/app/BackStackRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "i":I
    :cond_b
    goto :goto_4

    .line 2712
    :cond_c
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 2714
    :goto_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, v0, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2716
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 2717
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 2718
    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 2721
    :cond_d
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mResultKeys:Ljava/util/ArrayList;

    .line 2722
    .local v1, "savedResultKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_e

    .line 2723
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 2724
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v0, Landroidx/fragment/app/FragmentManagerState;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2723
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2727
    .end local v2    # "i":I
    :cond_e
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v3, v0, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    .line 2728
    return-void
.end method

.method retainNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2564
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_0

    .line 2565
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 2568
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->getSnapshot()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v0

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 9

    .line 2574
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->forcePostponedTransactions()V

    .line 2575
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->endAnimatingAwayFragments()V

    .line 2576
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 2578
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 2579
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 2582
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->saveActiveFragments()Ljava/util/ArrayList;

    move-result-object v0

    .line 2584
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/FragmentState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    .line 2585
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 2590
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->saveAddedFragments()Ljava/util/ArrayList;

    move-result-object v1

    .line 2593
    .local v1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2594
    .local v4, "backStack":[Landroidx/fragment/app/BackStackState;
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 2595
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2596
    .local v5, "size":I
    if-lez v5, :cond_3

    .line 2597
    new-array v4, v5, [Landroidx/fragment/app/BackStackState;

    .line 2598
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 2599
    new-instance v7, Landroidx/fragment/app/BackStackState;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v7, v8}, Landroidx/fragment/app/BackStackState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    aput-object v7, v4, v6

    .line 2600
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2601
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAllState: adding back stack #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 2602
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2601
    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2608
    .end local v5    # "size":I
    .end local v6    # "i":I
    :cond_3
    new-instance v2, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v2}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    .line 2609
    .local v2, "fms":Landroidx/fragment/app/FragmentManagerState;
    iput-object v0, v2, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 2610
    iput-object v1, v2, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    .line 2611
    iput-object v4, v2, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    .line 2612
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    .line 2613
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_4

    .line 2614
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 2616
    :cond_4
    iget-object v3, v2, Landroidx/fragment/app/FragmentManagerState;->mResultKeys:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2617
    iget-object v3, v2, Landroidx/fragment/app/FragmentManagerState;->mResults:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2618
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    .line 2619
    return-object v2
.end method

.method public saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
    .locals 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1114
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v0

    .line 1116
    .local v0, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1117
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not currently in the FragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 1120
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->saveInstanceState()Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v1

    return-object v1
.end method

.method scheduleCommit()V
    .locals 5

    .line 1862
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1863
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 1864
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1865
    .local v1, "postponeReady":Z
    :goto_0
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 1866
    .local v2, "pendingReady":Z
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1867
    :cond_2
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1868
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1869
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 1871
    .end local v1    # "postponeReady":Z
    .end local v2    # "pendingReady":Z
    :cond_3
    monitor-exit v0

    .line 1872
    return-void

    .line 1871
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "isPop"    # Z

    .line 1456
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1457
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1458
    instance-of v1, v0, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v1, :cond_0

    .line 1459
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    .line 1462
    :cond_0
    return-void
.end method

.method public setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V
    .locals 0
    .param p1, "fragmentFactory"    # Landroidx/fragment/app/FragmentFactory;

    .line 3238
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    .line 3239
    return-void
.end method

.method public final setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "requestKey"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 834
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;

    .line 836
    .local v0, "resultListener":Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;
    if-eqz v0, :cond_0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 840
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :goto_0
    return-void
.end method

.method public final setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V
    .locals 4
    .param p1, "requestKey"    # Ljava/lang/String;
    .param p2, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .param p3, "listener"    # Landroidx/fragment/app/FragmentResultListener;

    .line 854
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 855
    .local v0, "lifecycle":Landroidx/lifecycle/Lifecycle;
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_0

    .line 856
    return-void

    .line 859
    :cond_0
    new-instance v1, Landroidx/fragment/app/FragmentManager$6;

    invoke-direct {v1, p0, p1, p3, v0}, Landroidx/fragment/app/FragmentManager$6;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroidx/fragment/app/FragmentResultListener;Landroidx/lifecycle/Lifecycle;)V

    .line 880
    .local v1, "observer":Landroidx/lifecycle/LifecycleEventObserver;
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 881
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mResultListeners:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;

    invoke-direct {v3, v0, p3, v1}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentResultListener;Landroidx/lifecycle/LifecycleEventObserver;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;

    .line 883
    .local v2, "storedListener":Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;
    if-eqz v2, :cond_1

    .line 884
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager$LifecycleAwareResultListener;->removeObserver()V

    .line 886
    :cond_1
    return-void
.end method

.method setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 3219
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, p0, :cond_1

    .line 3224
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 3225
    return-void

    .line 3221
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 3178
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 3180
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3183
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 3184
    .local v0, "previousPrimaryNav":Landroidx/fragment/app/Fragment;
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 3185
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 3186
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 3187
    return-void
.end method

.method setSpecialEffectsControllerFactory(Landroidx/fragment/app/SpecialEffectsControllerFactory;)V
    .locals 0
    .param p1, "specialEffectsControllerFactory"    # Landroidx/fragment/app/SpecialEffectsControllerFactory;

    .line 3274
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroidx/fragment/app/SpecialEffectsControllerFactory;

    .line 3275
    return-void
.end method

.method showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1719
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    .line 1721
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1724
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1726
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1135
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    .line 1139
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1140
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v1, :cond_1

    .line 1145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1146
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 1151
    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 3324
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 3325
    return-void
.end method
