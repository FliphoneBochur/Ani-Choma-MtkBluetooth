.class Lcom/google/protobuf/RopeByteString$Balancer;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Balancer"
.end annotation


# instance fields
.field private final prefixesStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/RopeByteString$1;)V
    .locals 0

    .line 607
    invoke-direct {p0}, Lcom/google/protobuf/RopeByteString$Balancer;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/protobuf/RopeByteString$Balancer;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 607
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/RopeByteString$Balancer;->balance(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private balance(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 2

    .line 614
    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    .line 615
    invoke-direct {p0, p2}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    .line 618
    iget-object p1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    .line 619
    :goto_0
    iget-object p2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 620
    iget-object p2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/ByteString;

    .line 621
    new-instance v0, Lcom/google/protobuf/RopeByteString;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 622
    move-object p1, v0

    goto :goto_0

    .line 625
    :cond_0
    return-object p1
.end method

.method private doBalance(Lcom/google/protobuf/ByteString;)V
    .locals 3

    .line 633
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->insert(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 635
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/RopeByteString;

    if-eqz v0, :cond_1

    .line 636
    check-cast p1, Lcom/google/protobuf/RopeByteString;

    .line 637
    invoke-static {p1}, Lcom/google/protobuf/RopeByteString;->access$400(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    .line 638
    invoke-static {p1}, Lcom/google/protobuf/RopeByteString;->access$500(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    .line 639
    nop

    .line 643
    :goto_0
    return-void

    .line 640
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDepthBinForLength(I)I
    .locals 1

    .line 696
    sget-object v0, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    .line 697
    if-gez p1, :cond_0

    .line 700
    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    .line 701
    add-int/lit8 p1, p1, -0x1

    .line 704
    :cond_0
    return p1
.end method

.method private insert(Lcom/google/protobuf/ByteString;)V
    .locals 5

    .line 658
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    .line 659
    sget-object v1, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    .line 665
    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    goto/16 :goto_2

    .line 668
    :cond_0
    sget-object v1, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    aget v0, v1, v0

    .line 671
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 672
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 673
    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    .line 674
    new-instance v4, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v4, v2, v1, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 675
    move-object v1, v4

    goto :goto_0

    .line 678
    :cond_1
    new-instance v0, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v0, v1, p1, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 681
    :goto_1
    iget-object p1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 682
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result p1

    .line 683
    sget-object v1, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    .line 684
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 685
    iget-object p1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    .line 686
    new-instance v1, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v1, p1, v0, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 687
    move-object v0, v1

    goto :goto_1

    .line 691
    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_3

    .line 666
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 693
    :goto_3
    return-void
.end method
