.class public Lcom/shabakaty/downloader/v31;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/v31$a;
    }
.end annotation


# static fields
.field public static final a:[C

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shabakaty/downloader/v31;->a:[C

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/v31;->b:Ljava/util/HashMap;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/wu0$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wu0$a;-><init>()V

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method public static a(Ljava/lang/Appendable;Lcom/shabakaty/downloader/v31$a;I)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/v31$a;->t:[I

    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const-string v1, ""

    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p1, Lcom/shabakaty/downloader/v31$a;->u:[Ljava/lang/String;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    iget-object p1, p1, Lcom/shabakaty/downloader/v31$a;->t:[I

    add-int/lit8 v3, v0, 0x1

    aget p1, p1, v3

    if-ne p1, p2, :cond_0

    .line 3
    aget-object p1, v2, v3

    goto :goto_0

    :cond_0
    aget-object p1, v2, v0

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    const/16 v0, 0x3b

    if-eq p1, v1, :cond_2

    const/16 p2, 0x26

    .line 4
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    :cond_2
    const-string p1, "&#x"

    .line 5
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method public static b(Ljava/lang/Appendable;Ljava/lang/String;Lcom/shabakaty/downloader/wu0$a;ZZZ)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v1, Lcom/shabakaty/downloader/wu0$a;->r:Lcom/shabakaty/downloader/v31$a;

    .line 2
    iget-object v3, v1, Lcom/shabakaty/downloader/wu0$a;->t:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/charset/CharsetEncoder;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/wu0$a;->b()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 4
    :goto_0
    iget v1, v1, Lcom/shabakaty/downloader/wu0$a;->u:I

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v6, v4, :cond_16

    move-object v9, p1

    .line 6
    invoke-virtual {p1, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    const/4 v11, 0x1

    if-eqz p4, :cond_4

    .line 7
    invoke-static {v10}, Lcom/shabakaty/downloader/de4;->d(I)Z

    move-result v12

    if-eqz v12, :cond_3

    if-eqz p5, :cond_1

    if-eqz v7, :cond_15

    :cond_1
    if-eqz v8, :cond_2

    goto/16 :goto_4

    :cond_2
    const/16 v8, 0x20

    .line 8
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_3
    const/4 v7, 0x1

    const/4 v8, 0x0

    :cond_4
    const/high16 v12, 0x10000

    if-ge v10, v12, :cond_13

    int-to-char v12, v10

    const/16 v13, 0x22

    if-eq v12, v13, :cond_11

    const/16 v13, 0x26

    if-eq v12, v13, :cond_10

    const/16 v13, 0x3c

    if-eq v12, v13, :cond_d

    const/16 v13, 0x3e

    if-eq v12, v13, :cond_b

    const/16 v13, 0xa0

    if-eq v12, v13, :cond_9

    .line 9
    invoke-static {v1}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v13

    if-eqz v13, :cond_5

    if-eq v13, v11, :cond_7

    .line 10
    invoke-virtual {v3, v12}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v11

    goto :goto_2

    :cond_5
    const/16 v13, 0x80

    if-ge v12, v13, :cond_6

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :cond_7
    :goto_2
    if-eqz v11, :cond_8

    .line 11
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_4

    .line 12
    :cond_8
    invoke-static {p0, v2, v10}, Lcom/shabakaty/downloader/v31;->a(Ljava/lang/Appendable;Lcom/shabakaty/downloader/v31$a;I)V

    goto :goto_4

    .line 13
    :cond_9
    sget-object v11, Lcom/shabakaty/downloader/v31$a;->v:Lcom/shabakaty/downloader/v31$a;

    if-eq v2, v11, :cond_a

    const-string v11, "&nbsp;"

    .line 14
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    :cond_a
    const-string v11, "&#xa0;"

    .line 15
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    :cond_b
    if-nez p3, :cond_c

    const-string v11, "&gt;"

    .line 16
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    .line 17
    :cond_c
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_4

    :cond_d
    if-eqz p3, :cond_f

    .line 18
    sget-object v11, Lcom/shabakaty/downloader/v31$a;->v:Lcom/shabakaty/downloader/v31$a;

    if-ne v2, v11, :cond_e

    goto :goto_3

    .line 19
    :cond_e
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_4

    :cond_f
    :goto_3
    const-string v11, "&lt;"

    .line 20
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    :cond_10
    const-string v11, "&amp;"

    .line 21
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    :cond_11
    if-eqz p3, :cond_12

    const-string v11, "&quot;"

    .line 22
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    .line 23
    :cond_12
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_4

    .line 24
    :cond_13
    new-instance v11, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([C)V

    .line 25
    invoke-virtual {v3, v11}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 26
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    .line 27
    :cond_14
    invoke-static {p0, v2, v10}, Lcom/shabakaty/downloader/v31;->a(Ljava/lang/Appendable;Lcom/shabakaty/downloader/v31$a;I)V

    .line 28
    :cond_15
    :goto_4
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v6, v10

    goto/16 :goto_1

    :cond_16
    return-void
.end method
