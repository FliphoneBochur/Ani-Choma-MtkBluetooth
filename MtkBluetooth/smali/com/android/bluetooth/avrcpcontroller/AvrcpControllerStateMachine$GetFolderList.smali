.class Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;
.super Lcom/android/bluetooth/statemachine/State;
.source "AvrcpControllerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetFolderList"
.end annotation


# static fields
.field private static final STATE_TAG:Ljava/lang/String; = "Avrcp.GetFolderList"


# instance fields
.field mAbort:Z

.field mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

.field mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

.field final synthetic this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method private fetchContents(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V
    .locals 5

    .line 885
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getChildrenCount()I

    move-result v0

    .line 886
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getExpectedChildren()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getChildrenCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 888
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchContents(title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", scope="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getScope()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", expected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getExpectedChildren()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 888
    invoke-static {v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getScope()B

    move-result v3

    if-eqz v3, :cond_2

    if-eq v3, v2, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avrcp.GetFolderList Scope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getScope()B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be handled here."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AvrcpControllerStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 897
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v2, v2, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getNowPlayingListNative([BII)V

    .line 899
    goto :goto_0

    .line 901
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v2, v2, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getFolderListNative([BII)V

    .line 903
    goto :goto_0

    .line 893
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v2, v2, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getPlayerListNative([BII)V

    .line 895
    nop

    .line 908
    :goto_0
    return-void
.end method

.method private navigateToFolderOrRetrieve(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V
    .locals 4

    .line 922
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->getNextStepToFolder(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAVIGATING From "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    .line 924
    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->getCurrentBrowsedFolder()Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAVIGATING Toward "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    if-nez v0, :cond_0

    .line 927
    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 929
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    .line 930
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->getCurrentBrowsedFolder()Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 932
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->isPlayer()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 933
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAVIGATING Player "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 934
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->isBrowsable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 935
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 936
    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getBluetoothID()J

    move-result-wide v1

    long-to-int v1, v1

    .line 935
    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->setBrowsedPlayerNative([BI)V

    goto/16 :goto_1

    .line 938
    :cond_2
    const-string p1, "Player doesn\'t support browsing"

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 939
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setCached(Z)V

    .line 940
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto/16 :goto_1

    .line 942
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNavigateUpNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 943
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NAVIGATING UP "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 944
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->getCurrentBrowsedFolder()Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getParent()Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 945
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->getCurrentBrowsedFolder()Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setCached(Z)V

    .line 946
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeUnusedArtworkFromBrowseTree()V

    .line 947
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->changeFolderPathNative([BBJ)V

    goto :goto_1

    .line 953
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAVIGATING DOWN "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 954
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 957
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getBluetoothID()J

    move-result-wide v2

    .line 954
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->changeFolderPathNative([BBJ)V

    goto :goto_1

    .line 931
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->fetchContents(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 959
    :goto_1
    return-void
.end method

.method private shouldAbort(II)Z
    .locals 1

    .line 876
    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 879
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 730
    const-string v0, "Avrcp.GetFolderList Entering GetFolderList"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0xc9

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessageDelayed(IJ)V

    .line 733
    invoke-super {p0}, Lcom/android/bluetooth/statemachine/State;->enter()V

    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mAbort:Z

    .line 735
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    .line 736
    iget v1, v0, Landroid/os/Message;->what:I

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_0

    .line 738
    const-string v1, "Avrcp.GetFolderList new Get Request"

    invoke-static {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 739
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    if-nez v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v1, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_0

    .line 746
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->navigateToFolderOrRetrieve(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 748
    :goto_0
    return-void
.end method

.method public exit()V
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1800(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)V

    .line 964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 965
    invoke-super {p0}, Lcom/android/bluetooth/statemachine/State;->exit()V

    .line 966
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avrcp.GetFolderList processMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 753
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_a

    const/16 v3, 0x12c

    if-eq v0, v3, :cond_7

    const-wide/16 v3, 0x2710

    packed-switch v0, :pswitch_data_0

    .line 862
    const/4 p1, 0x0

    return p1

    .line 792
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v5, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v5}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v5, v6, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->setCurrentBrowsedPlayer(Ljava/lang/String;II)Z

    .line 793
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {p1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1600(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)V

    .line 794
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessageDelayed(IJ)V

    .line 795
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->navigateToFolderOrRetrieve(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 796
    goto/16 :goto_4

    .line 799
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v5, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mNextStep:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v5}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->setCurrentBrowsedFolder(Ljava/lang/String;)Z

    .line 800
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->getCurrentBrowsedFolder()Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setExpectedChildren(I)V

    .line 804
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->refreshCoverArt()V

    .line 806
    iget-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mAbort:Z

    if-eqz p1, :cond_0

    .line 807
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto/16 :goto_4

    .line 809
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {p1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)V

    .line 810
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessageDelayed(IJ)V

    .line 811
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->navigateToFolderOrRetrieve(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 813
    goto/16 :goto_4

    .line 816
    :pswitch_2
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 817
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->isCached()Z

    move-result v2

    if-nez v2, :cond_2

    .line 818
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 819
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1200(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 820
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    .line 821
    iget-object v4, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1200(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 822
    goto :goto_0

    .line 823
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->addChildren(Ljava/util/List;)I

    .line 824
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v2, v2, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    const-string v3, "__ROOT__"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->setCurrentBrowsedFolder(Ljava/lang/String;)Z

    .line 825
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setExpectedChildren(I)V

    .line 826
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setCached(Z)V

    .line 827
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1300(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 829
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 830
    goto/16 :goto_4

    .line 843
    :pswitch_3
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setCached(Z)V

    .line 844
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 845
    goto/16 :goto_4

    .line 755
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 756
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getExpectedChildren()I

    move-result v0

    sub-int/2addr v0, v1

    .line 757
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetFolderItems: End "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 757
    invoke-static {v5}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    .line 763
    iget-object v7, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v7}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1400(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 764
    iget-object v7, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v7, v6}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$800(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V

    goto :goto_2

    .line 766
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->setCoverArtUuid(Ljava/lang/String;)V

    .line 768
    :goto_2
    goto :goto_1

    .line 772
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v5, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->addChildren(Ljava/util/List;)I

    move-result v5

    .line 773
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " items to the browse tree"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 774
    iget-object v5, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-static {v5, v6}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1300(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 776
    iget-object v5, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v5}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getChildrenCount()I

    move-result v5

    if-ge v5, v0, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mAbort:Z

    if-eqz p1, :cond_5

    goto :goto_3

    .line 785
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->fetchContents(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 787
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {p1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1500(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)V

    .line 788
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessageDelayed(IJ)V

    .line 790
    goto :goto_4

    .line 781
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setCached(Z)V

    .line 782
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_4

    .line 848
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 849
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getScope()B

    move-result v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 850
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getScope()B

    move-result v2

    .line 849
    invoke-direct {p0, v0, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->shouldAbort(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 851
    iput-boolean v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->mAbort:Z

    .line 853
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 854
    const-string p1, "GetFolderItems: Go Get Another Directory"

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    goto :goto_4

    .line 856
    :cond_9
    const-string p1, "GetFolderItems: Get The Same Directory, ignore"

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 858
    goto :goto_4

    .line 835
    :cond_a
    const-string p1, "AvrcpControllerStateMachine"

    const-string v0, "TIMEOUT"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 837
    nop

    .line 864
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xd1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
