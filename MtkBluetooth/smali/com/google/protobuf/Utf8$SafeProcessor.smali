.class final Lcom/google/protobuf/Utf8$SafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 860
    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method private static partialIsValidUtf8([BII)I
    .locals 1

    .line 1098
    :goto_0
    if-ge p1, p2, :cond_0

    aget-byte v0, p0, p1

    if-ltz v0, :cond_0

    .line 1099
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1102
    :cond_0
    if-lt p1, p2, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8NonAscii([BII)I

    move-result p0

    :goto_1
    return p0
.end method

.method private static partialIsValidUtf8NonAscii([BII)I
    .locals 6

    .line 1112
    :goto_0
    if-lt p1, p2, :cond_0

    .line 1113
    const/4 p0, 0x0

    return p0

    .line 1115
    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-gez p1, :cond_d

    .line 1117
    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge p1, v1, :cond_3

    .line 1120
    if-lt v0, p2, :cond_1

    .line 1122
    return p1

    .line 1127
    :cond_1
    const/16 v1, -0x3e

    if-lt p1, v1, :cond_2

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    if-le v0, v3, :cond_b

    .line 1128
    :cond_2
    return v2

    .line 1130
    :cond_3
    const/16 v4, -0x10

    if-ge p1, v4, :cond_8

    .line 1133
    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_4

    .line 1134
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/Utf8;->access$1100([BII)I

    move-result p0

    return p0

    .line 1136
    :cond_4
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_7

    const/16 v5, -0x60

    if-ne p1, v1, :cond_5

    if-lt v0, v5, :cond_7

    :cond_5
    const/16 v1, -0x13

    if-ne p1, v1, :cond_6

    if-ge v0, v5, :cond_7

    :cond_6
    add-int/lit8 p1, v4, 0x1

    aget-byte v0, p0, v4

    if-le v0, v3, :cond_b

    .line 1143
    :cond_7
    return v2

    .line 1148
    :cond_8
    add-int/lit8 v1, p2, -0x2

    if-lt v0, v1, :cond_9

    .line 1149
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/Utf8;->access$1100([BII)I

    move-result p0

    return p0

    .line 1151
    :cond_9
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_c

    shl-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_c

    add-int/lit8 p1, v1, 0x1

    aget-byte v0, p0, v1

    if-gt v0, v3, :cond_c

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-le p1, v3, :cond_a

    goto :goto_1

    :cond_a
    move p1, v0

    .line 1164
    :cond_b
    goto :goto_0

    .line 1161
    :cond_c
    :goto_1
    return v2

    .line 1115
    :cond_d
    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method decodeUtf8([BII)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 958
    or-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_b

    .line 963
    nop

    .line 964
    add-int v0, p2, p3

    .line 968
    new-array p3, p3, [C

    .line 969
    move v3, v1

    .line 973
    :goto_0
    if-ge p2, v0, :cond_1

    .line 974
    aget-byte v4, p1, p2

    .line 975
    invoke-static {v4}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v5

    if-nez v5, :cond_0

    .line 976
    goto :goto_1

    .line 978
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 979
    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, p3, v3}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 980
    move v3, v5

    goto :goto_0

    .line 982
    :cond_1
    :goto_1
    move v8, v3

    :goto_2
    if-ge p2, v0, :cond_a

    .line 983
    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    .line 984
    invoke-static {p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 985
    add-int/lit8 v4, v8, 0x1

    invoke-static {p2, p3, v8}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 988
    :goto_3
    if-ge v3, v0, :cond_3

    .line 989
    aget-byte p2, p1, v3

    .line 990
    invoke-static {p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 991
    goto :goto_4

    .line 993
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 994
    add-int/lit8 v5, v4, 0x1

    invoke-static {p2, p3, v4}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 995
    move v4, v5

    goto :goto_3

    .line 1025
    :cond_3
    :goto_4
    move p2, v3

    move v8, v4

    goto :goto_5

    .line 996
    :cond_4
    invoke-static {p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 997
    if-ge v3, v0, :cond_5

    .line 1000
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v5, v8, 0x1

    invoke-static {p2, v3, p3, v8}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_5

    .line 998
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1001
    :cond_6
    invoke-static {p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1002
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_7

    .line 1005
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    add-int/lit8 v6, v8, 0x1

    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_5

    .line 1003
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1012
    :cond_8
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_9

    .line 1015
    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v6, p1, v4

    add-int/lit8 v9, v3, 0x1

    aget-byte v7, p1, v3

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    .line 1023
    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    .line 1025
    :goto_5
    goto :goto_2

    .line 1013
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1027
    :cond_a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 959
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 960
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1034
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$SafeProcessor;->decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .locals 7

    .line 1039
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1040
    nop

    .line 1041
    nop

    .line 1042
    add-int/2addr p4, p3

    const/4 v1, 0x0

    .line 1045
    :goto_0
    const/16 v2, 0x80

    if-ge v1, v0, :cond_0

    add-int v3, v1, p3

    if-ge v3, p4, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_0

    .line 1046
    int-to-byte v2, v4

    aput-byte v2, p2, v3

    .line 1045
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1048
    :cond_0
    if-ne v1, v0, :cond_1

    .line 1049
    add-int/2addr p3, v0

    return p3

    .line 1051
    :cond_1
    add-int/2addr p3, v1

    .line 1052
    :goto_1
    if-ge v1, v0, :cond_b

    .line 1053
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1054
    if-ge v3, v2, :cond_2

    if-ge p3, p4, :cond_2

    .line 1055
    add-int/lit8 v4, p3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    move p3, v4

    goto/16 :goto_2

    .line 1056
    :cond_2
    const/16 v4, 0x800

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, p4, -0x2

    if-gt p3, v4, :cond_3

    .line 1057
    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    .line 1058
    add-int/lit8 p3, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p2, v4

    goto :goto_2

    .line 1059
    :cond_3
    const v4, 0xdfff

    const v5, 0xd800

    if-lt v3, v5, :cond_4

    if-ge v4, v3, :cond_5

    :cond_4
    add-int/lit8 v6, p4, -0x3

    if-gt p3, v6, :cond_5

    .line 1061
    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    .line 1062
    add-int/lit8 p3, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 1063
    add-int/lit8 v4, p3, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    move p3, v4

    goto :goto_2

    .line 1064
    :cond_5
    add-int/lit8 v6, p4, -0x4

    if-gt p3, v6, :cond_8

    .line 1068
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1071
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 1072
    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    .line 1073
    add-int/lit8 p3, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p2, v3

    .line 1074
    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    .line 1075
    add-int/lit8 p3, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    .line 1076
    move v1, v4

    .line 1052
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1068
    :cond_6
    move v1, v4

    .line 1069
    :cond_7
    new-instance p1, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p1, v1, v0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    .line 1079
    :cond_8
    if-gt v5, v3, :cond_a

    if-gt v3, v4, :cond_a

    add-int/lit8 p2, v1, 0x1

    .line 1080
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_9

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1081
    :cond_9
    new-instance p1, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {p1, v1, v0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    .line 1083
    :cond_a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed writing "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p4, " at index "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1086
    :cond_b
    return p3
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1092
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Utf8$SafeProcessor;->encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 1093
    return-void
.end method

.method partialIsValidUtf8(I[BII)I
    .locals 6

    .line 863
    if-eqz p1, :cond_11

    .line 871
    if-lt p3, p4, :cond_0

    .line 872
    return p1

    .line 874
    :cond_0
    int-to-byte v0, p1

    .line 876
    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_3

    .line 881
    const/16 p1, -0x3e

    if-lt v0, p1, :cond_2

    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_1

    goto :goto_0

    :cond_1
    move p3, p1

    goto/16 :goto_4

    .line 884
    :cond_2
    :goto_0
    return v2

    .line 886
    :cond_3
    const/16 v4, -0x10

    if-ge v0, v4, :cond_a

    .line 890
    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    .line 891
    if-nez p1, :cond_5

    .line 892
    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    .line 893
    if-lt p1, p4, :cond_4

    .line 894
    invoke-static {v0, p3}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 893
    :cond_4
    move v5, p3

    move p3, p1

    move p1, v5

    .line 897
    :cond_5
    if-gt p1, v3, :cond_9

    const/16 v4, -0x60

    if-ne v0, v1, :cond_6

    if-lt p1, v4, :cond_9

    :cond_6
    const/16 v1, -0x13

    if-ne v0, v1, :cond_7

    if-ge p1, v4, :cond_9

    :cond_7
    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_8

    goto :goto_1

    .line 906
    :cond_8
    move p3, p1

    goto :goto_4

    .line 904
    :cond_9
    :goto_1
    return v2

    .line 910
    :cond_a
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    .line 911
    const/4 v4, 0x0

    .line 912
    if-nez v1, :cond_c

    .line 913
    add-int/lit8 p1, p3, 0x1

    aget-byte v1, p2, p3

    .line 914
    if-lt p1, p4, :cond_b

    .line 915
    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 914
    :cond_b
    move p3, p1

    goto :goto_2

    .line 918
    :cond_c
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v4, p1

    .line 920
    :goto_2
    if-nez v4, :cond_e

    .line 921
    add-int/lit8 p1, p3, 0x1

    aget-byte v4, p2, p3

    .line 922
    if-lt p1, p4, :cond_d

    .line 923
    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    .line 922
    :cond_d
    move p3, p1

    .line 931
    :cond_e
    if-gt v1, v3, :cond_10

    shl-int/lit8 p1, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_10

    if-gt v4, v3, :cond_10

    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_f

    goto :goto_3

    :cond_f
    move p3, p1

    goto :goto_4

    .line 941
    :cond_10
    :goto_3
    return v2

    .line 946
    :cond_11
    :goto_4
    invoke-static {p2, p3, p4}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8([BII)I

    move-result p1

    return p1
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .locals 0

    .line 952
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method
