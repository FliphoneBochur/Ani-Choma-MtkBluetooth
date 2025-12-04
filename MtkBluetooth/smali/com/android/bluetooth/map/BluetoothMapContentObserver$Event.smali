.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Event"
.end annotation


# static fields
.field static final PATH:Ljava/lang/String; = "telecom/msg/"


# instance fields
.field public chatState:I

.field public conversationID:J

.field public conversationName:Ljava/lang/String;

.field public datetime:Ljava/lang/String;

.field public eventType:Ljava/lang/String;

.field public folder:Ljava/lang/String;

.field public handle:J

.field public msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public oldFolder:Ljava/lang/String;

.field public presenceState:I

.field public presenceStatus:Ljava/lang/String;

.field public priority:Ljava/lang/String;

.field public senderName:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field public uci:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 2

    .line 659
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    .line 614
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 617
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 618
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    .line 619
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 620
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 621
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 623
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 624
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 625
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    .line 626
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 627
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    .line 660
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    .line 661
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    .line 662
    invoke-direct {p0, p5, p6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 663
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 664
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 668
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    .line 614
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 617
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 618
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    .line 619
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 620
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 621
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 623
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 624
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 625
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    .line 626
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 627
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    .line 669
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    .line 670
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    .line 671
    invoke-direct {p0, p5, p6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 672
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 673
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 674
    if-eqz p8, :cond_0

    .line 675
    invoke-static {p8}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 677
    :cond_0
    if-eqz p9, :cond_1

    .line 678
    invoke-static {p9}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 680
    :cond_1
    iput-object p10, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 681
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 686
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    .line 614
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 617
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 618
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    .line 619
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 620
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 621
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 623
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 624
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 625
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    .line 626
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 627
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    .line 687
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    .line 688
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    .line 689
    invoke-direct {p0, p5, p6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 690
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 691
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 692
    if-eqz p8, :cond_0

    .line 693
    invoke-static {p8}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 695
    :cond_0
    if-eqz p9, :cond_1

    .line 696
    invoke-static {p9}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 698
    :cond_1
    const-wide/16 p1, 0x0

    cmp-long p1, p11, p1

    if-eqz p1, :cond_2

    .line 699
    iput-wide p11, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 701
    :cond_2
    if-eqz p13, :cond_3

    .line 702
    invoke-static {p13}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 704
    :cond_3
    iput-object p10, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 705
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 2

    .line 643
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    .line 614
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 617
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 618
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    .line 619
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 620
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 621
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 623
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 624
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 625
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    .line 626
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 627
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    .line 644
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    .line 645
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    .line 646
    invoke-direct {p0, p5, p7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 647
    if-eqz p6, :cond_2

    .line 648
    sget-object p1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p7, p1, :cond_1

    sget-object p1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p7, p1, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "telecom/msg/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    goto :goto_1

    .line 649
    :cond_1
    :goto_0
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    goto :goto_1

    .line 654
    :cond_2
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 656
    :goto_1
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 657
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V
    .locals 2

    .line 710
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    .line 614
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 617
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 618
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    .line 619
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 620
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 621
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 623
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 624
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 625
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    .line 626
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 627
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    .line 711
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    .line 712
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    .line 713
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 714
    if-eqz p5, :cond_0

    .line 715
    invoke-static {p5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 717
    :cond_0
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 718
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 719
    const-wide/16 p1, 0x0

    cmp-long p1, p8, p1

    if-eqz p1, :cond_1

    .line 720
    iput-wide p8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 722
    :cond_1
    if-eqz p10, :cond_2

    .line 723
    invoke-static {p10}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 725
    :cond_2
    if-eqz p11, :cond_3

    .line 726
    iput p11, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    .line 728
    :cond_3
    if-eqz p12, :cond_4

    .line 729
    invoke-static {p12}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 731
    :cond_4
    if-eqz p13, :cond_5

    .line 732
    iput p13, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    .line 734
    :cond_5
    return-void
.end method

.method private setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 1

    .line 632
    if-eqz p1, :cond_2

    .line 633
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "telecom/msg/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    goto :goto_1

    .line 634
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    goto :goto_1

    .line 639
    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    .line 641
    :goto_1
    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 737
    move-object/from16 v0, p0

    const-string v1, "event"

    const-string v2, "MAP-event-report"

    const-string v3, "UTF-8"

    const-string v4, "BluetoothMapContentObserver"

    const-string v5, ""

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 738
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 741
    :try_start_0
    invoke-interface {v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 742
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 743
    const-string v8, "\r\n"

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 744
    invoke-interface {v7, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 745
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$600(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0xc

    const/16 v10, 0xb

    const-string v11, "version"

    if-ne v8, v9, :cond_0

    .line 746
    :try_start_1
    const-string v8, "1.2"

    invoke-interface {v7, v5, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 747
    :cond_0
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$600(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 748
    const-string v8, "1.1"

    invoke-interface {v7, v5, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 750
    :cond_1
    const-string v8, "1.0"

    invoke-interface {v7, v5, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 752
    :goto_0
    invoke-interface {v7, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 753
    const-string v8, "type"

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-interface {v7, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 754
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v9, "ConversationChanged"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "ParticipantPresenceChanged"

    if-nez v8, :cond_3

    :try_start_2
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v11, "ParticipantChatStateChanged"

    .line 755
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 758
    :cond_2
    const-string v8, "handle"

    iget-wide v11, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 759
    invoke-static {v11, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v11

    .line 758
    invoke-interface {v7, v5, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 756
    :cond_3
    :goto_1
    const-string v8, "participant_uci"

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    invoke-interface {v7, v5, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    :goto_2
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 763
    const-string v8, "folder"

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    invoke-interface {v7, v5, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 765
    :cond_4
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 766
    const-string v8, "old_folder"

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    invoke-interface {v7, v5, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 771
    :cond_5
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eqz v8, :cond_6

    .line 772
    const-string v8, "msg_type"

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v5, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 776
    :cond_6
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 777
    const-string v8, "datetime"

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    invoke-interface {v7, v5, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 779
    :cond_7
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v12, 0x100

    if-eqz v8, :cond_9

    .line 780
    const-string v8, "subject"

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 781
    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v14, v12, :cond_8

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    goto :goto_3

    :cond_8
    move v14, v12

    :goto_3
    invoke-virtual {v13, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 780
    invoke-interface {v7, v5, v8, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 783
    :cond_9
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 784
    const-string v8, "sender_name"

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 786
    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v14, v12, :cond_a

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    goto :goto_4

    :cond_a
    const/16 v14, 0xff

    .line 785
    :goto_4
    invoke-virtual {v13, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 784
    invoke-interface {v7, v5, v8, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 788
    :cond_b
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 789
    const-string v8, "priority"

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    invoke-interface {v7, v5, v8, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 794
    :cond_c
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$600(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)I

    move-result v8

    if-le v8, v10, :cond_12

    .line 795
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    if-eqz v8, :cond_d

    .line 796
    const-string v8, "conversation_name"

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    invoke-interface {v7, v5, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 798
    :cond_d
    iget-wide v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    const-wide/16 v15, -0x1

    cmp-long v8, v13, v15

    if-eqz v8, :cond_e

    .line 800
    const-string v8, "conversation_id"

    iget-wide v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 801
    invoke-static {v13, v14, v10}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapConvoHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v10

    .line 800
    invoke-interface {v7, v5, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 803
    :cond_e
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 804
    iget v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    if-eqz v8, :cond_f

    .line 806
    const-string v8, "presence_availability"

    iget v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    .line 807
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 806
    invoke-interface {v7, v5, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 809
    :cond_f
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    if-eqz v8, :cond_11

    .line 811
    const-string v8, "presence_status"

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 813
    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v13, v12, :cond_10

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    goto :goto_5

    .line 814
    :cond_10
    nop

    .line 812
    :goto_5
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 811
    invoke-interface {v7, v5, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 817
    :cond_11
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 818
    iget v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    if-eqz v8, :cond_12

    .line 820
    const-string v8, "chat_state"

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 825
    :cond_12
    invoke-interface {v7, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 826
    invoke-interface {v7, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 827
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 836
    :catch_0
    move-exception v0

    .line 837
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$700()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 838
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 832
    :catch_1
    move-exception v0

    .line 833
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$700()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 834
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 828
    :catch_2
    move-exception v0

    .line 829
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$700()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 830
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    :cond_13
    :goto_6
    nop

    .line 842
    :cond_14
    :goto_7
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$300()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 843
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_15
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
