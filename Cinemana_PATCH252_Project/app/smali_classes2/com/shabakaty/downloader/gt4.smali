.class public Lcom/shabakaty/downloader/gt4;
.super Ljava/lang/Object;
.source "TypeIntrinsics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/uc2;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/shabakaty/downloader/vc2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "kotlin.collections.MutableList"

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/gt4;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    const-class v0, Lcom/shabakaty/downloader/gt4;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->i(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 5
    throw p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/uc2;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/shabakaty/downloader/ad2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "kotlin.collections.MutableSet"

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/gt4;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    check-cast p0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    const-class v0, Lcom/shabakaty/downloader/gt4;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->i(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 5
    throw p0
.end method

.method public static c(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    if-eqz p0, :cond_1a

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/kn1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 2
    instance-of v0, p0, Lcom/shabakaty/downloader/tn1;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/tn1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/tn1;->getArity()I

    move-result v0

    goto/16 :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/shabakaty/downloader/rm1;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5
    :cond_1
    instance-of v0, p0, Lcom/shabakaty/downloader/tm1;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 6
    :cond_2
    instance-of v0, p0, Lcom/shabakaty/downloader/hn1;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto/16 :goto_0

    .line 7
    :cond_3
    instance-of v0, p0, Lcom/shabakaty/downloader/jn1;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto/16 :goto_0

    .line 8
    :cond_4
    instance-of v0, p0, Lcom/shabakaty/downloader/ln1;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto/16 :goto_0

    .line 9
    :cond_5
    instance-of v0, p0, Lcom/shabakaty/downloader/mn1;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto/16 :goto_0

    .line 10
    :cond_6
    instance-of v0, p0, Lcom/shabakaty/downloader/nn1;

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_0

    .line 11
    :cond_7
    instance-of v0, p0, Lcom/shabakaty/downloader/on1;

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto/16 :goto_0

    .line 12
    :cond_8
    instance-of v0, p0, Lcom/shabakaty/downloader/pn1;

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto/16 :goto_0

    .line 13
    :cond_9
    instance-of v0, p0, Lcom/shabakaty/downloader/qn1;

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    goto/16 :goto_0

    .line 14
    :cond_a
    instance-of v0, p0, Lcom/shabakaty/downloader/sm1;

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    goto :goto_0

    .line 15
    :cond_b
    instance-of v0, p0, Lcom/shabakaty/downloader/um1;

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    goto :goto_0

    .line 16
    :cond_c
    instance-of v0, p0, Lcom/shabakaty/downloader/vm1;

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    goto :goto_0

    .line 17
    :cond_d
    instance-of v0, p0, Lcom/shabakaty/downloader/wm1;

    if-eqz v0, :cond_e

    const/16 v0, 0xd

    goto :goto_0

    .line 18
    :cond_e
    instance-of v0, p0, Lcom/shabakaty/downloader/xm1;

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    goto :goto_0

    .line 19
    :cond_f
    instance-of v0, p0, Lcom/shabakaty/downloader/ym1;

    if-eqz v0, :cond_10

    const/16 v0, 0xf

    goto :goto_0

    .line 20
    :cond_10
    instance-of v0, p0, Lcom/shabakaty/downloader/zm1;

    if-eqz v0, :cond_11

    const/16 v0, 0x10

    goto :goto_0

    .line 21
    :cond_11
    instance-of v0, p0, Lcom/shabakaty/downloader/an1;

    if-eqz v0, :cond_12

    const/16 v0, 0x11

    goto :goto_0

    .line 22
    :cond_12
    instance-of v0, p0, Lcom/shabakaty/downloader/bn1;

    if-eqz v0, :cond_13

    const/16 v0, 0x12

    goto :goto_0

    .line 23
    :cond_13
    instance-of v0, p0, Lcom/shabakaty/downloader/cn1;

    if-eqz v0, :cond_14

    const/16 v0, 0x13

    goto :goto_0

    .line 24
    :cond_14
    instance-of v0, p0, Lcom/shabakaty/downloader/en1;

    if-eqz v0, :cond_15

    const/16 v0, 0x14

    goto :goto_0

    .line 25
    :cond_15
    instance-of v0, p0, Lcom/shabakaty/downloader/fn1;

    if-eqz v0, :cond_16

    const/16 v0, 0x15

    goto :goto_0

    .line 26
    :cond_16
    instance-of v0, p0, Lcom/shabakaty/downloader/gn1;

    if-eqz v0, :cond_17

    const/16 v0, 0x16

    goto :goto_0

    :cond_17
    const/4 v0, -0x1

    :goto_0
    if-ne v0, p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    if-eqz v1, :cond_19

    goto :goto_1

    .line 27
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kotlin.jvm.functions.Function"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/gt4;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1a
    :goto_1
    return-object p0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, " cannot be cast to "

    .line 2
    invoke-static {p0, v0, p1}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 4
    const-class p0, Lcom/shabakaty/downloader/gt4;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/shabakaty/downloader/j32;->i(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 5
    throw p1
.end method
