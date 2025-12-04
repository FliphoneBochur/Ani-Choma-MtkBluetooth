.class final Lcom/google/protobuf/CodedOutputStreamWriter;
.super Ljava/lang/Object;
.source "CodedOutputStreamWriter.java"

# interfaces
.implements Lcom/google/protobuf/Writer;


# instance fields
.field private final output:Lcom/google/protobuf/CodedOutputStream;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/CodedOutputStream;

    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    .line 55
    iput-object p0, p1, Lcom/google/protobuf/CodedOutputStream;->wrapper:Lcom/google/protobuf/CodedOutputStreamWriter;

    .line 56
    return-void
.end method

.method public static forCodedOutput(Lcom/google/protobuf/CodedOutputStream;)Lcom/google/protobuf/CodedOutputStreamWriter;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->wrapper:Lcom/google/protobuf/CodedOutputStreamWriter;

    if-eqz v0, :cond_0

    .line 48
    iget-object p0, p0, Lcom/google/protobuf/CodedOutputStream;->wrapper:Lcom/google/protobuf/CodedOutputStreamWriter;

    return-object p0

    .line 50
    :cond_0
    new-instance v0, Lcom/google/protobuf/CodedOutputStreamWriter;

    invoke-direct {v0, p0}, Lcom/google/protobuf/CodedOutputStreamWriter;-><init>(Lcom/google/protobuf/CodedOutputStream;)V

    return-object v0
.end method

.method private writeDeterministicBooleanMapEntry(IZLjava/lang/Object;Lcom/google/protobuf/MapEntryLite$Metadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(IZTV;",
            "Lcom/google/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/Boolean;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 637
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4, v0, p3}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 638
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p4, p2, p3}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 639
    return-void
.end method

.method private writeDeterministicIntegerMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/Integer;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 645
    nop

    .line 646
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 647
    add-int/lit8 v6, v4, 0x1

    aput v5, v1, v4

    .line 648
    move v4, v6

    goto :goto_0

    .line 649
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 650
    nop

    :goto_1
    if-ge v3, v0, :cond_1

    aget v2, v1, v3

    .line 651
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 652
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 653
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2, v6, v4}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 654
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, p2, v2, v4}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 650
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 656
    :cond_1
    return-void
.end method

.method private writeDeterministicLongMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/Long;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [J

    .line 662
    nop

    .line 663
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 664
    add-int/lit8 v7, v4, 0x1

    aput-wide v5, v1, v4

    .line 665
    move v4, v7

    goto :goto_0

    .line 666
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 667
    nop

    :goto_1
    if-ge v3, v0, :cond_1

    aget-wide v4, v1, v3

    .line 668
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 669
    iget-object v6, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v7, 0x2

    invoke-virtual {v6, p1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 670
    iget-object v6, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p2, v7, v2}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 671
    iget-object v6, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, p2, v4, v2}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 667
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 673
    :cond_1
    return-void
.end method

.method private writeDeterministicMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    sget-object v0, Lcom/google/protobuf/CodedOutputStreamWriter$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    iget-object v1, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 629
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "does not support key type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 625
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeDeterministicStringMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 627
    goto :goto_0

    .line 621
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeDeterministicLongMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 623
    goto :goto_0

    .line 613
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeDeterministicIntegerMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 615
    goto :goto_0

    .line 599
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeDeterministicBooleanMapEntry(IZLjava/lang/Object;Lcom/google/protobuf/MapEntryLite$Metadata;)V

    .line 603
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 604
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeDeterministicBooleanMapEntry(IZLjava/lang/Object;Lcom/google/protobuf/MapEntryLite$Metadata;)V

    .line 631
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeDeterministicStringMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 679
    nop

    .line 680
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 681
    add-int/lit8 v6, v4, 0x1

    aput-object v5, v1, v4

    .line 682
    move v4, v6

    goto :goto_0

    .line 683
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 684
    nop

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    .line 685
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 686
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 687
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-static {p2, v2, v4}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 688
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-static {v5, p2, v2, v4}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 690
    :cond_1
    return-void
.end method

.method private writeLazyString(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 421
    :goto_0
    return-void
.end method


# virtual methods
.method public fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;
    .locals 1

    .line 60
    sget-object v0, Lcom/google/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method public getTotalBytesWritten()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    return v0
.end method

.method public writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 120
    return-void
.end method

.method public writeBoolList(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 381
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 384
    nop

    .line 385
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 386
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr p3, v1

    .line 385
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 391
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 392
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 394
    :cond_1
    goto :goto_3

    .line 395
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 396
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 399
    :cond_3
    :goto_3
    return-void
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 130
    return-void
.end method

.method public writeBytesList(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method public writeDouble(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 90
    return-void
.end method

.method public writeDoubleList(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 333
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 336
    nop

    .line 337
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 338
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v1

    add-int/2addr p3, v1

    .line 337
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 343
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 346
    :cond_1
    goto :goto_3

    .line 347
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 348
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 351
    :cond_3
    :goto_3
    return-void
.end method

.method public writeEndGroup(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 175
    return-void
.end method

.method public writeEnum(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 95
    return-void
.end method

.method public writeEnumList(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 357
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 360
    nop

    .line 361
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 362
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 361
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 367
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 368
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    :cond_1
    goto :goto_3

    .line 371
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 372
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 375
    :cond_3
    :goto_3
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 115
    return-void
.end method

.method public writeFixed32List(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 214
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 217
    nop

    .line 218
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 219
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 218
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 224
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    :cond_1
    goto :goto_3

    .line 228
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 229
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 232
    :cond_3
    :goto_3
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 110
    return-void
.end method

.method public writeFixed64List(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 285
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 288
    nop

    .line 289
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 290
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 289
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 295
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 296
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    :cond_1
    goto :goto_3

    .line 299
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 300
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 303
    :cond_3
    :goto_3
    return-void
.end method

.method public writeFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 85
    return-void
.end method

.method public writeFloatList(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 309
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 312
    nop

    .line 313
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 314
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v1

    add-int/2addr p3, v1

    .line 313
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 319
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 322
    :cond_1
    goto :goto_3

    .line 323
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 324
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 327
    :cond_3
    :goto_3
    return-void
.end method

.method public writeGroup(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 160
    return-void
.end method

.method public writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V

    .line 165
    return-void
.end method

.method public writeGroupList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 567
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;)V

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_0
    return-void
.end method

.method public writeGroupList(ILjava/util/List;Lcom/google/protobuf/Schema;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 574
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_0
    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 105
    return-void
.end method

.method public writeInt32List(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 190
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 193
    nop

    .line 194
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 195
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 194
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 200
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_1
    goto :goto_3

    .line 204
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 205
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 208
    :cond_3
    :goto_3
    return-void
.end method

.method public writeInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 75
    return-void
.end method

.method public writeInt64List(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 237
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 240
    nop

    .line 241
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 242
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 241
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 247
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 248
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_1
    goto :goto_3

    .line 251
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 252
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 255
    :cond_3
    :goto_3
    return-void
.end method

.method public writeMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->isSerializationDeterministic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeDeterministicMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 583
    return-void

    .line 585
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 586
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 587
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    .line 588
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 587
    invoke-virtual {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 589
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 590
    goto :goto_0

    .line 591
    :cond_1
    return-void
.end method

.method public writeMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 150
    return-void
.end method

.method public writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V

    .line 155
    return-void
.end method

.method public writeMessageList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 553
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;)V

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_0
    return-void
.end method

.method public writeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 560
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_0
    return-void
.end method

.method public final writeMessageSetItem(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    instance-of v0, p2, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/google/protobuf/MessageLite;)V

    .line 184
    :goto_0
    return-void
.end method

.method public writeSFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32(II)V

    .line 70
    return-void
.end method

.method public writeSFixed32List(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 458
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 461
    nop

    .line 462
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 463
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 462
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 465
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 468
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 469
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 471
    :cond_1
    goto :goto_3

    .line 472
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 473
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32(II)V

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 476
    :cond_3
    :goto_3
    return-void
.end method

.method public writeSFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed64(IJ)V

    .line 80
    return-void
.end method

.method public writeSFixed64List(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 482
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 485
    nop

    .line 486
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 487
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 486
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 489
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 492
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 493
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 495
    :cond_1
    goto :goto_3

    .line 496
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 497
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed64(IJ)V

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 500
    :cond_3
    :goto_3
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 140
    return-void
.end method

.method public writeSInt32List(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 506
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 509
    nop

    .line 510
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 511
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 510
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 513
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 516
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 517
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 519
    :cond_1
    goto :goto_3

    .line 520
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 521
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 524
    :cond_3
    :goto_3
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    .line 145
    return-void
.end method

.method public writeSInt64List(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 530
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 533
    nop

    .line 534
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 535
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 534
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 537
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 540
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 541
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 543
    :cond_1
    goto :goto_3

    .line 544
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 545
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 548
    :cond_3
    :goto_3
    return-void
.end method

.method public writeStartGroup(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 170
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 125
    return-void
.end method

.method public writeStringList(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    instance-of v0, p2, Lcom/google/protobuf/LazyStringList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 404
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/LazyStringList;

    .line 405
    nop

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 406
    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/CodedOutputStreamWriter;->writeLazyString(ILjava/lang/Object;)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_0
    goto :goto_2

    .line 409
    :cond_1
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 413
    :cond_2
    :goto_2
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 135
    return-void
.end method

.method public writeUInt32List(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 434
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 437
    nop

    .line 438
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 439
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 438
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 441
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 444
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 445
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    :cond_1
    goto :goto_3

    .line 448
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 449
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 452
    :cond_3
    :goto_3
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 100
    return-void
.end method

.method public writeUInt64List(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 261
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 264
    nop

    .line 265
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 266
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 265
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 271
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 272
    iget-object p1, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    :cond_1
    goto :goto_3

    .line 275
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 276
    iget-object p3, p0, Lcom/google/protobuf/CodedOutputStreamWriter;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 279
    :cond_3
    :goto_3
    return-void
.end method
