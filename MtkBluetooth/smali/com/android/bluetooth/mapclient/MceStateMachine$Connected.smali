.class Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;
.super Lcom/android/bluetooth/statemachine/State;
.source "MceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/MceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/mapclient/MceStateMachine;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method private getRecipientsUri(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/vcard/VCardEntry;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 757
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 759
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardEntry;

    .line 760
    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v1

    .line 761
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 762
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CC Recipient number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MceSM"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v2, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$1100(Lcom/android/bluetooth/mapclient/MceStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_1
    goto :goto_0

    .line 769
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 770
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private markMessageDeleted(Lcom/android/bluetooth/mapclient/RequestGetMessage;)V
    .locals 3

    .line 623
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MceSM"

    const-string v1, "markMessageDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus;

    .line 625
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/RequestGetMessage;->getHandle()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;->DELETED:Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    invoke-direct {v1, p1, v2}, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus;-><init>(Ljava/lang/String;Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;)V

    .line 624
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 626
    return-void
.end method

.method private markMessageRead(Lcom/android/bluetooth/mapclient/RequestGetMessage;)V
    .locals 3

    .line 614
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MceSM"

    const-string v1, "markMessageRead"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$1000(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/RequestGetMessage;->getHandle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;

    .line 616
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;->setRead(Z)V

    .line 617
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus;

    .line 618
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/RequestGetMessage;->getHandle()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;->READ:Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    invoke-direct {v1, p1, v2}, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus;-><init>(Ljava/lang/String;Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;)V

    .line 617
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 619
    return-void
.end method

.method private notifySentMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/mapclient/EventReport$Type;)V
    .locals 4

    .line 774
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "MceSM"

    if-eqz v0, :cond_0

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got a status for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_0
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    goto/16 :goto_4

    .line 780
    :cond_1
    const/4 v0, 0x0

    .line 782
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 783
    sget-object v3, Lcom/android/bluetooth/mapclient/EventReport$Type;->SENDING_FAILURE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    if-eq p2, v3, :cond_4

    sget-object v3, Lcom/android/bluetooth/mapclient/EventReport$Type;->SENDING_SUCCESS:Lcom/android/bluetooth/mapclient/EventReport$Type;

    if-ne p2, v3, :cond_2

    goto :goto_0

    .line 786
    :cond_2
    sget-object v3, Lcom/android/bluetooth/mapclient/EventReport$Type;->DELIVERY_SUCCESS:Lcom/android/bluetooth/mapclient/EventReport$Type;

    if-eq p2, v3, :cond_3

    sget-object v3, Lcom/android/bluetooth/mapclient/EventReport$Type;->DELIVERY_FAILURE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    if-ne p2, v3, :cond_5

    .line 788
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$1400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$900(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_1

    .line 785
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$1300(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$900(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 791
    :cond_5
    :goto_1
    if-eqz v0, :cond_9

    .line 793
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 794
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*******Sending "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_6
    const/4 p1, -0x1

    .line 797
    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->SENDING_FAILURE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    if-eq p2, v2, :cond_7

    sget-object v2, Lcom/android/bluetooth/mapclient/EventReport$Type;->DELIVERY_FAILURE:Lcom/android/bluetooth/mapclient/EventReport$Type;

    if-ne p2, v2, :cond_8

    .line 799
    :cond_7
    const/4 p1, 0x1

    .line 801
    :cond_8
    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 802
    :catch_0
    move-exception p1

    .line 803
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notification Request Canceled"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :goto_2
    goto :goto_3

    .line 806
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received a notification on message with handle = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but it is NOT found in mSentMessageLog! where did it go?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :goto_3
    return-void

    .line 779
    :cond_a
    :goto_4
    return-void
.end method

.method private processInboundMessage(Lcom/android/bluetooth/mapclient/RequestGetMessage;)V
    .locals 7

    .line 667
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/RequestGetMessage;->getMessage()Lcom/android/bluetooth/mapclient/Bmessage;

    move-result-object v0

    .line 668
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "MceSM"

    if-eqz v1, :cond_0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify inbound Message"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    if-nez v0, :cond_1

    .line 673
    return-void

    .line 675
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/Bmessage;->getFolder()Ljava/lang/String;

    move-result-object v1

    const-string v3, "telecom/msg/inbox"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 676
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 677
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring message received in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/Bmessage;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_2
    return-void

    .line 681
    :cond_3
    sget-object v1, Lcom/android/bluetooth/mapclient/MceStateMachine$1;->$SwitchMap$com$android$bluetooth$mapclient$Bmessage$Type:[I

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/Bmessage;->getType()Lcom/android/bluetooth/mapclient/Bmessage$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/mapclient/Bmessage$Type;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    .line 745
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unhandled type"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/Bmessage;->getType()Lcom/android/bluetooth/mapclient/Bmessage$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/Bmessage$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 685
    :cond_4
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Body: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/Bmessage;->getBodyContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_5
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 689
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/Bmessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_6
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recipients"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/Bmessage;->getRecipients()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$1000(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/RequestGetMessage;->getHandle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;

    .line 697
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/RequestGetMessage;->getMessage()Lcom/android/bluetooth/mapclient/Bmessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/mapclient/Bmessage;->getStatus()Lcom/android/bluetooth/mapclient/Bmessage$Status;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/mapclient/Bmessage$Status;->READ:Lcom/android/bluetooth/mapclient/Bmessage$Status;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_8

    goto :goto_0

    :cond_8
    move v3, v6

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;->setRead(Z)V

    .line 699
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 700
    const-string v4, "android.bluetooth.mapmce.profile.action.MESSAGE_RECEIVED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    iget-object v4, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$300(Lcom/android/bluetooth/mapclient/MceStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 702
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/RequestGetMessage;->getHandle()Ljava/lang/String;

    move-result-object p1

    const-string v4, "android.bluetooth.mapmce.profile.extra.MESSAGE_HANDLE"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    nop

    .line 704
    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;->getTimestamp()Ljava/lang/Long;

    move-result-object p1

    .line 703
    const-string v4, "android.bluetooth.mapmce.profile.extra.MESSAGE_TIMESTAMP"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 705
    nop

    .line 706
    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;->getRead()Z

    move-result p1

    .line 705
    const-string v1, "android.bluetooth.mapmce.profile.extra.MESSAGE_READ_STATUS"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 707
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/Bmessage;->getBodyContent()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/Bmessage;->getOriginator()Lcom/android/vcard/VCardEntry;

    move-result-object p1

    .line 709
    if-eqz p1, :cond_c

    .line 710
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 711
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_9
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v4

    .line 714
    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 715
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 716
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Originator number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_a
    iget-object v2, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    .line 720
    invoke-static {v2, v4}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$1100(Lcom/android/bluetooth/mapclient/MceStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 719
    const-string v4, "android.bluetooth.mapmce.profile.extra.SENDER_CONTACT_URI"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    :cond_b
    nop

    .line 723
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 722
    const-string v2, "android.bluetooth.mapmce.profile.extra.SENDER_CONTACT_NAME"

    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    :cond_c
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/Bmessage;->getType()Lcom/android/bluetooth/mapclient/Bmessage$Type;

    move-result-object p1

    sget-object v2, Lcom/android/bluetooth/mapclient/Bmessage$Type;->MMS:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    if-ne p1, v2, :cond_d

    .line 726
    new-instance p1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-direct {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    .line 727
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/Bmessage;->getBodyContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parseMsgPart(Ljava/lang/String;)V

    .line 728
    nop

    .line 729
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getMessageAsText()Ljava/lang/String;

    move-result-object p1

    .line 728
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/Bmessage;->getRecipients()Ljava/util/ArrayList;

    move-result-object p1

    .line 731
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 732
    nop

    .line 733
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->getRecipientsUri(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object p1

    .line 732
    const-string v0, "android.intent.extra.CC"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    :cond_d
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$1200(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 738
    if-eqz p1, :cond_e

    .line 739
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    :cond_e
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$1200(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object p1

    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-virtual {p1, v3, v0}, Lcom/android/bluetooth/mapclient/MapClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 742
    nop

    .line 748
    :goto_1
    return-void
.end method

.method private processMessageListing(Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;)V
    .locals 10

    .line 636
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "MceSM"

    if-eqz v0, :cond_0

    .line 637
    const-string v0, "processMessageListing"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->getList()Ljava/util/ArrayList;

    move-result-object p1

    .line 640
    if-eqz p1, :cond_2

    .line 643
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 644
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/mapclient/Message;

    .line 645
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting message for handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/bluetooth/mapclient/Message;->getHandle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$1000(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/bluetooth/mapclient/Message;->getHandle()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;

    iget-object v6, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {v2}, Lcom/android/bluetooth/mapclient/Message;->getHandle()Ljava/lang/String;

    move-result-object v7

    .line 650
    invoke-virtual {v2}, Lcom/android/bluetooth/mapclient/Message;->getDateTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/bluetooth/mapclient/Message;->isRead()Z

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;-><init>(Lcom/android/bluetooth/mapclient/MceStateMachine;Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 649
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget-object v3, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {v2}, Lcom/android/bluetooth/mapclient/Message;->getHandle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getMessage(Ljava/lang/String;)Z

    .line 643
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 654
    :cond_2
    return-void
.end method

.method private processNotification(Landroid/os/Message;)V
    .locals 7

    .line 574
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "MceSM"

    if-eqz v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler: msg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7d3

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 580
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/mapclient/EventReport;

    .line 581
    if-nez p1, :cond_2

    .line 582
    const-string p1, "MSG_NOTIFICATION event is null"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void

    .line 585
    :cond_2
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message Type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/EventReport;->getType()Lcom/android/bluetooth/mapclient/EventReport$Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Message handle = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/EventReport;->getHandle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_3
    sget-object v0, Lcom/android/bluetooth/mapclient/MceStateMachine$1;->$SwitchMap$com$android$bluetooth$mapclient$EventReport$Type:[I

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/EventReport;->getType()Lcom/android/bluetooth/mapclient/EventReport$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/EventReport$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 606
    :cond_4
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/EventReport;->getHandle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/EventReport;->getType()Lcom/android/bluetooth/mapclient/EventReport$Type;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->notifySentMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/mapclient/EventReport$Type;)V

    goto :goto_0

    .line 594
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$1000(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/EventReport;->getHandle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 595
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 596
    new-instance v2, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;

    iget-object v3, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/EventReport;->getHandle()Ljava/lang/String;

    move-result-object v4

    .line 597
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;-><init>(Lcom/android/bluetooth/mapclient/MceStateMachine;Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 598
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$1000(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/EventReport;->getHandle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    new-instance v2, Lcom/android/bluetooth/mapclient/RequestGetMessage;

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/EventReport;->getHandle()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;->UTF_8:Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    invoke-direct {v2, p1, v3, v1}, Lcom/android/bluetooth/mapclient/RequestGetMessage;-><init>(Ljava/lang/String;Lcom/android/bluetooth/mapclient/MasClient$CharsetType;Z)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 602
    nop

    .line 610
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 461
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter Connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MceSM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$100(Lcom/android/bluetooth/mapclient/MceStateMachine;)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$200(Lcom/android/bluetooth/mapclient/MceStateMachine;II)V

    .line 465
    invoke-static {}, Lcom/android/bluetooth/Utils;->isPtsTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/mapclient/RequestSetPath;

    const-string v2, "telecom"

    invoke-direct {v1, v2}, Lcom/android/bluetooth/mapclient/RequestSetPath;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 468
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/mapclient/RequestSetPath;

    const-string v2, "msg"

    invoke-direct {v1, v2}, Lcom/android/bluetooth/mapclient/RequestSetPath;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 469
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/mapclient/RequestSetPath;

    const-string v2, "inbox"

    invoke-direct {v1, v2}, Lcom/android/bluetooth/mapclient/RequestSetPath;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 470
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/mapclient/RequestGetFolderListing;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/bluetooth/mapclient/RequestGetFolderListing;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 471
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/mapclient/RequestSetPath;

    invoke-direct {v1, v2}, Lcom/android/bluetooth/mapclient/RequestSetPath;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 472
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/mapclient/RequestSetNotificationRegistration;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/bluetooth/mapclient/RequestSetNotificationRegistration;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 473
    return-void
.end method

.method public exit()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$102(Lcom/android/bluetooth/mapclient/MceStateMachine;I)I

    .line 562
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12

    .line 477
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/16 v3, 0x3ea

    if-eq v0, v3, :cond_6

    const/16 v3, 0x3eb

    const-string v4, "MceSM"

    if-eq v0, v3, :cond_0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from state:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 552
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return v2

    .line 511
    :pswitch_0
    new-instance v8, Lcom/android/bluetooth/mapclient/MessagesFilter;

    invoke-direct {v8}, Lcom/android/bluetooth/mapclient/MessagesFilter;-><init>()V

    .line 512
    invoke-static {}, Lcom/android/bluetooth/mapclient/MapUtils;->fetchMessageType()B

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/bluetooth/mapclient/MessagesFilter;->setMessageType(B)V

    .line 513
    invoke-virtual {v8, v1}, Lcom/android/bluetooth/mapclient/MessagesFilter;->setReadStatus(B)V

    .line 514
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 515
    const/4 v2, 0x5

    const/4 v3, -0x7

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 516
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lcom/android/bluetooth/mapclient/MessagesFilter;->setPeriod(Ljava/util/Date;Ljava/util/Date;)V

    .line 517
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    new-instance v2, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x32

    const/4 v11, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;-><init>(Ljava/lang/String;ILcom/android/bluetooth/mapclient/MessagesFilter;III)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 519
    goto/16 :goto_1

    .line 506
    :pswitch_1
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object p1

    new-instance v0, Lcom/android/bluetooth/mapclient/RequestGetFolderListing;

    invoke-direct {v0, v2, v2}, Lcom/android/bluetooth/mapclient/RequestGetFolderListing;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 507
    goto/16 :goto_1

    .line 502
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->processNotification(Landroid/os/Message;)V

    .line 503
    goto/16 :goto_1

    .line 496
    :pswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    new-instance v3, Lcom/android/bluetooth/mapclient/RequestGetMessage;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object v4, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;->UTF_8:Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    invoke-direct {v3, p1, v4, v2}, Lcom/android/bluetooth/mapclient/RequestGetMessage;-><init>(Ljava/lang/String;Lcom/android/bluetooth/mapclient/MasClient$CharsetType;Z)V

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 499
    goto/16 :goto_1

    .line 490
    :pswitch_4
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    new-instance v8, Lcom/android/bluetooth/mapclient/RequestPushMessage;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lcom/android/bluetooth/mapclient/Bmessage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "outbox"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/mapclient/RequestPushMessage;-><init>(Ljava/lang/String;Lcom/android/bluetooth/mapclient/Bmessage;Lcom/android/bluetooth/mapclient/MasClient$CharsetType;ZZ)V

    invoke-virtual {v0, v8}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 493
    goto/16 :goto_1

    .line 522
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    const-string v0, "Completed request"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/bluetooth/mapclient/RequestGetMessage;

    if-eqz v0, :cond_2

    .line 526
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/mapclient/RequestGetMessage;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->processInboundMessage(Lcom/android/bluetooth/mapclient/RequestGetMessage;)V

    goto/16 :goto_1

    .line 527
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/bluetooth/mapclient/RequestPushMessage;

    if-eqz v0, :cond_4

    .line 528
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/mapclient/RequestPushMessage;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/RequestPushMessage;->getMsgHandle()Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message Sent......."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_5

    .line 536
    iget-object v3, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$900(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/mapclient/RequestPushMessage;

    .line 537
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/RequestPushMessage;->getBMsg()Lcom/android/bluetooth/mapclient/Bmessage;

    move-result-object p1

    .line 536
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 539
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;

    if-eqz v0, :cond_5

    .line 540
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->processMessageListing(Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;)V

    goto :goto_1

    .line 539
    :cond_5
    :goto_0
    goto :goto_1

    .line 485
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 486
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$700(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 487
    goto :goto_1

    .line 479
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$300(Lcom/android/bluetooth/mapclient/MceStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 480
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$700(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_1

    .line 545
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$300(Lcom/android/bluetooth/mapclient/MceStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 546
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 547
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$700(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 556
    :cond_9
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
