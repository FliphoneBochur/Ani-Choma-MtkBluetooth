.class public Lcom/android/bluetooth/map/BluetoothMapbMessageMime;
.super Lcom/android/bluetooth/map/BluetoothMapbMessage;
.source "BluetoothMapbMessageMime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    }
.end annotation


# instance fields
.field private mBcc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private mBoundary:Ljava/lang/String;

.field private mCc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private mContentType:Ljava/lang/String;

.field private mDate:J

.field private mFrom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private mHasHeaders:Z

.field private mIncludeAttachments:Z

.field private mMessageId:Ljava/lang/String;

.field private mMyEncoding:Ljava/lang/String;

.field private mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;",
            ">;"
        }
    .end annotation
.end field

.field private mReplyTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private mSender:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private mSubject:Ljava/lang/String;

.field private mTextonly:Z

.field private mTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;-><init>()V

    .line 147
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mDate:J

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSubject:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mFrom:Ljava/util/ArrayList;

    .line 150
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSender:Ljava/util/ArrayList;

    .line 151
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mTo:Ljava/util/ArrayList;

    .line 152
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCc:Ljava/util/ArrayList;

    .line 153
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBcc:Ljava/util/ArrayList;

    .line 154
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mReplyTo:Ljava/util/ArrayList;

    .line 155
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mMessageId:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    .line 157
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mContentType:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBoundary:Ljava/lang/String;

    .line 159
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mTextonly:Z

    .line 161
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mHasHeaders:Z

    .line 162
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mMyEncoding:Ljava/lang/String;

    return-void
.end method

.method private decodeBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 730
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BASE64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    .line 732
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QUOTED-PRINTABLE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 733
    invoke-static {p1, p3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->quotedPrintableToUtf8(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 738
    :cond_1
    :try_start_0
    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 739
    :catch_0
    move-exception p1

    .line 743
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBoundary()Ljava/lang/String;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBoundary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--=_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBoundary:Ljava/lang/String;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBoundary:Ljava/lang/String;

    return-object v0
.end method

.method private parseMime(Ljava/lang/String;)V
    .locals 6

    .line 748
    const-string v0, "BluetoothMapbMessage"

    if-nez p1, :cond_0

    .line 749
    const-string p1, "parseMime called with a NULL message, terminating early"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void

    .line 762
    :cond_0
    nop

    .line 763
    nop

    .line 765
    const-string v1, "\\r\\n[ \\\t]+"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 766
    const-string v1, "\r\n\r\n"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 767
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v2, :cond_1

    .line 769
    goto :goto_0

    .line 771
    :cond_1
    aget-object p1, v1, v4

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parseMimeHeaders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 773
    if-eqz p1, :cond_3

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 775
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->D:Z

    if-eqz v2, :cond_2

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseMime remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_2
    move-object p1, v1

    goto :goto_0

    .line 779
    :cond_3
    aget-object p1, v1, v5

    .line 783
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBoundary:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 785
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parseMimeBody(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setTextOnly(Z)V

    .line 787
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mContentType:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 788
    const-string p1, "text/plain"

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mContentType:Ljava/lang/String;

    .line 790
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mContentType:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    goto :goto_2

    .line 792
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBoundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 793
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->D:Z

    if-eqz v1, :cond_6

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimePart count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_6
    move v0, v5

    :goto_1
    array-length v1, p1

    sub-int/2addr v1, v5

    if-ge v0, v1, :cond_8

    .line 798
    aget-object v1, p1, v0

    .line 799
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 800
    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parseMimePart(Ljava/lang/String;)V

    .line 797
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 804
    :cond_8
    :goto_2
    return-void
.end method

.method private parseMimeBody(Ljava/lang/String;)V
    .locals 3

    .line 724
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCharset:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    .line 726
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mMyEncoding:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCharset:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->decodeBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 727
    return-void
.end method

.method private parseMimeHeaders(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 552
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 553
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->D:Z

    const-string v1, "BluetoothMapbMessage"

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mHasHeaders:Z

    .line 559
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_15

    .line 560
    aget-object v4, p1, v3

    .line 561
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->D:Z

    if-eqz v5, :cond_1

    .line 562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Header["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 570
    goto/16 :goto_4

    .line 572
    :cond_2
    const-string v5, ":"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 573
    array-length v7, v5

    if-eq v7, v6, :cond_4

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    :goto_1
    if-ge v3, v2, :cond_3

    .line 577
    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 580
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 583
    :cond_4
    aget-object v7, v5, v0

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 584
    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 590
    const-string v9, "FROM"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 591
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 592
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 593
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mFrom:Ljava/util/ArrayList;

    .line 594
    goto/16 :goto_4

    :cond_5
    const-string v9, "TO"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 595
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 596
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 597
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mTo:Ljava/util/ArrayList;

    .line 598
    goto/16 :goto_4

    :cond_6
    const-string v9, "CC"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 599
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 600
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 601
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCc:Ljava/util/ArrayList;

    .line 602
    goto/16 :goto_4

    :cond_7
    const-string v9, "BCC"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 603
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 604
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 605
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBcc:Ljava/util/ArrayList;

    .line 606
    goto/16 :goto_4

    :cond_8
    const-string v9, "REPLY-TO"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 607
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 608
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 609
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mReplyTo:Ljava/util/ArrayList;

    .line 610
    goto/16 :goto_4

    :cond_9
    const-string v9, "SUBJECT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 611
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSubject:Ljava/lang/String;

    goto/16 :goto_4

    .line 612
    :cond_a
    const-string v9, "MESSAGE-ID"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 613
    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mMessageId:Ljava/lang/String;

    goto/16 :goto_4

    .line 614
    :cond_b
    const-string v9, "DATE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto/16 :goto_4

    .line 617
    :cond_c
    const-string v9, "MIME-VERSION"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto/16 :goto_4

    .line 619
    :cond_d
    const-string v9, "CONTENT-TYPE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 620
    const-string v4, ";"

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 621
    aget-object v5, v4, v0

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mContentType:Ljava/lang/String;

    .line 623
    array-length v5, v4

    move v7, v8

    :goto_2
    if-ge v7, v5, :cond_11

    .line 624
    aget-object v9, v4, v7

    const-string v10, "boundary"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 625
    aget-object v9, v4, v7

    const-string v10, "boundary[\\s]*="

    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBoundary:Ljava/lang/String;

    .line 627
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x22

    if-ne v9, v10, :cond_e

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBoundary:Ljava/lang/String;

    .line 628
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_e

    .line 629
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBoundary:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBoundary:Ljava/lang/String;

    .line 631
    :cond_e
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->D:Z

    if-eqz v9, :cond_10

    .line 632
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Boundary tag="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBoundary:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 634
    :cond_f
    aget-object v9, v4, v7

    const-string v10, "charset"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 635
    aget-object v9, v4, v7

    const-string v10, "charset[\\s]*="

    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCharset:Ljava/lang/String;

    .line 623
    :cond_10
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 638
    :cond_11
    goto :goto_4

    :cond_12
    const-string v6, "CONTENT-TRANSFER-ENCODING"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 639
    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mMyEncoding:Ljava/lang/String;

    goto :goto_4

    .line 641
    :cond_13
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->D:Z

    if-eqz v5, :cond_14

    .line 642
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping unknown header: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_14
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 646
    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseMimePart(Ljava/lang/String;)V
    .locals 14

    .line 650
    const-string v0, "\r\n\r\n"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v2

    .line 652
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mMyEncoding:Ljava/lang/String;

    .line 655
    const/4 v4, 0x0

    aget-object v5, v0, v4

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 656
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->D:Z

    const-string v7, "BluetoothMapbMessage"

    if-eqz v6, :cond_0

    .line 657
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseMimePart: headers count="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_0
    array-length v6, v0

    if-eq v6, v1, :cond_1

    .line 661
    goto/16 :goto_3

    .line 663
    :cond_1
    array-length p1, v5

    move v6, v4

    :goto_0
    const/4 v8, 0x1

    if-ge v6, p1, :cond_d

    aget-object v9, v5, v6

    .line 665
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 666
    const-string v11, "--"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 667
    goto/16 :goto_2

    .line 670
    :cond_2
    const-string v10, ":"

    invoke-virtual {v9, v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 671
    array-length v11, v10

    if-eq v11, v1, :cond_3

    .line 672
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->D:Z

    if-eqz v8, :cond_c

    .line 673
    const-string v8, "part-Header not formatted correctly: "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 677
    :cond_3
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->D:Z

    if-eqz v11, :cond_4

    .line 678
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseMimePart: header="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_4
    aget-object v11, v10, v4

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 681
    aget-object v10, v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 682
    const-string v12, "CONTENT-TYPE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 683
    const-string v9, ";"

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 684
    aget-object v10, v9, v4

    iput-object v10, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    .line 686
    array-length v10, v9

    move v11, v8

    :goto_1
    if-ge v11, v10, :cond_6

    .line 687
    aget-object v12, v9, v11

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 688
    const-string v13, "charset"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 689
    const-string v13, "charset[\\s]*="

    invoke-virtual {v12, v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v8

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    .line 686
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 692
    :cond_6
    goto :goto_2

    :cond_7
    const-string v8, "CONTENT-LOCATION"

    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 694
    iput-object v10, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    .line 695
    iput-object v10, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    goto :goto_2

    .line 696
    :cond_8
    const-string v8, "CONTENT-TRANSFER-ENCODING"

    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 697
    move-object v3, v10

    goto :goto_2

    .line 698
    :cond_9
    const-string v8, "CONTENT-ID"

    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 700
    iput-object v10, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    goto :goto_2

    .line 701
    :cond_a
    const-string v8, "CONTENT-DISPOSITION"

    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 703
    iput-object v10, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    goto :goto_2

    .line 705
    :cond_b
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->D:Z

    if-eqz v8, :cond_c

    .line 706
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping unknown part-header: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_c
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 711
    :cond_d
    aget-object p1, v0, v8

    .line 712
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_e

    .line 713
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_e

    .line 714
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0xa

    if-ne v0, v5, :cond_e

    .line 715
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 720
    :cond_e
    :goto_3
    iget-object v0, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->decodeBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 721
    return-void
.end method


# virtual methods
.method public addBcc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBcc:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBcc:Ljava/util/ArrayList;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBcc:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method public addCc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCc:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCc:Ljava/util/ArrayList;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCc:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public addFrom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mFrom:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mFrom:Ljava/util/ArrayList;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mFrom:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method public addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    .line 198
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    return-object v0
.end method

.method public addReplyTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mReplyTo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mReplyTo:Ljava/util/ArrayList;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mReplyTo:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method public addSender(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSender:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSender:Ljava/util/ArrayList;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSender:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public addTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mTo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mTo:Ljava/util/ArrayList;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mTo:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public encode()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 823
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeMime()[B

    move-result-object v0

    return-object v0
.end method

.method public encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .line 385
    nop

    .line 386
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 387
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/text/util/Rfc822Token;

    .line 389
    invoke-virtual {p3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    .line 391
    add-int v3, v0, v2

    const/16 v4, 0x3e6

    if-lt v3, v4, :cond_0

    .line 392
    const-string v0, "\r\n "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    move v0, v1

    .line 395
    :cond_0
    invoke-virtual {p3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ";"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    add-int/2addr v0, v2

    .line 397
    goto :goto_0

    .line 398
    :cond_1
    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    return-void
.end method

.method public encodeHeaders(Ljava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 411
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mDate:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-string v1, "\r\n"

    if-eqz v0, :cond_0

    .line 412
    const-string v0, "Date: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 428
    const-string v0, "Subject: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mFrom:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 431
    const-string v0, "From: \r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mFrom:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 434
    const-string v2, "From: "

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSender:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 437
    const-string v2, "Sender: "

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mTo:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCc:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBcc:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 443
    const-string v0, "To:  undisclosed-recipients:;\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mTo:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 446
    const-string v2, "To: "

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 448
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCc:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 449
    const-string v2, "Cc: "

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 451
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBcc:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 452
    const-string v2, "Bcc: "

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 454
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mReplyTo:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 455
    const-string v2, "Reply-To: "

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 457
    :cond_9
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mIncludeAttachments:Z

    if-eqz v0, :cond_b

    .line 458
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mMessageId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 459
    const-string v0, "Message-Id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mMessageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 462
    const-string v0, "Content-Type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mContentType:Ljava/lang/String;

    .line 463
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v0, "; boundary="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getBoundary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    return-void
.end method

.method public encodeMime()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    nop

    .line 513
    const-string v2, "8BIT"

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mEncoding:Ljava/lang/String;

    .line 515
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeHeaders(Ljava/lang/StringBuilder;)V

    .line 516
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 517
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getIncludeAttachments()Z

    move-result v2

    if-nez v2, :cond_1

    .line 518
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 521
    invoke-virtual {v4, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->encodePlainText(Ljava/lang/StringBuilder;)V

    .line 522
    goto :goto_0

    :cond_0
    goto :goto_3

    .line 524
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 525
    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 526
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getBoundary()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v4, v8, :cond_2

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    invoke-virtual {v5, v1, v7, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->encode(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 527
    goto :goto_1

    .line 531
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    if-eqz v1, :cond_4

    .line 535
    const-string v2, "END:MSG"

    const-string v3, "/END\\:MSG"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    goto :goto_4

    .line 538
    :cond_4
    new-array v1, v3, [B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encodeGeneric(Ljava/util/ArrayList;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBcc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBcc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mDate:J

    return-wide v0
.end method

.method public getDateString()Ljava/lang/String;
    .locals 4

    .line 204
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss Z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 205
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mDate:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 206
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mFrom:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIncludeAttachments()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mIncludeAttachments:Z

    return v0
.end method

.method public getMessageAsText()Ljava/lang/String;
    .locals 5

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const-string v1, "<Sub:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 186
    iget-object v3, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TEXT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    new-instance v3, Ljava/lang/String;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_1
    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeParts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReplyTo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mReplyTo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSender()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSender:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSize()I
    .locals 3

    .line 363
    nop

    .line 364
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 366
    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 367
    goto :goto_0

    .line 369
    :cond_0
    return v1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getTextOnly()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mTextonly:Z

    return v0
.end method

.method public getTo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mTo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parseMsgInit()V
    .locals 0

    .line 819
    return-void
.end method

.method public parseMsgPart(Ljava/lang/String;)V
    .locals 0

    .line 811
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->parseMime(Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method public setBcc(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mBcc:Ljava/util/ArrayList;

    .line 291
    return-void
.end method

.method public setCc(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCc:Ljava/util/ArrayList;

    .line 276
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mContentType:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setDate(J)V
    .locals 0

    .line 214
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mDate:J

    .line 215
    return-void
.end method

.method public setFrom(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mFrom:Ljava/util/ArrayList;

    .line 231
    return-void
.end method

.method public setIncludeAttachments(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mIncludeAttachments:Z

    .line 341
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mMessageId:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setReplyTo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mReplyTo:Ljava/util/ArrayList;

    .line 306
    return-void
.end method

.method public setSender(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSender:Ljava/util/ArrayList;

    .line 246
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mSubject:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setTextOnly(Z)V
    .locals 0

    .line 332
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mTextonly:Z

    .line 333
    return-void
.end method

.method public setTo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mTo:Ljava/util/ArrayList;

    .line 261
    return-void
.end method

.method public updateCharset()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCharset:Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 351
    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->mCharset:Ljava/lang/String;

    .line 353
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->V:Z

    if-eqz v0, :cond_1

    .line 354
    const-string v0, "BluetoothMapbMessage"

    const-string v1, "Charset set to UTF-8"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 358
    :cond_0
    goto :goto_0

    .line 360
    :cond_1
    :goto_1
    return-void
.end method
