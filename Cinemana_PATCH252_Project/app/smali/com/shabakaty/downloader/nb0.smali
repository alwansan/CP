.class public final Lcom/shabakaty/downloader/nb0;
.super Ljava/lang/Object;
.source "ConsoleLogger.kt"

# interfaces
.implements Lcom/shabakaty/downloader/vx2;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/firebase/analytics/FirebaseAnalytics;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/nb0;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/nb0;->b:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/nb0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gf3;Lcom/shabakaty/downloader/yo;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/nb0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/nb0;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/nb0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/tx2;)V
    .locals 14

    iget v0, p0, Lcom/shabakaty/downloader/nb0;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/nb0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/yo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v3, p1, Lcom/shabakaty/downloader/tx2;->a:Lcom/shabakaty/downloader/sy3;

    .line 4
    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/yo;->m(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/sy3;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v3, p1, Lcom/shabakaty/downloader/tx2;->b:Lcom/shabakaty/downloader/sy3;

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/yo;->l(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/sy3;)Ljava/lang/StringBuilder;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/tx2;->c:Landroid/os/Bundle;

    .line 8
    invoke-virtual {v0, v2, p1}, Lcom/shabakaty/downloader/yo;->k(Ljava/lang/StringBuilder;Landroid/os/Bundle;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder()\n        \u2026)\n            .toString()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/nb0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/gf3;

    const/4 v2, 0x3

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v3, v0, Lcom/shabakaty/downloader/gf3;->e:Ljava/lang/String;

    const-string v4, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    .line 13
    invoke-virtual {v0, v2, v3, v4}, Lcom/shabakaty/downloader/gf3;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    iget v4, v0, Lcom/shabakaty/downloader/gf3;->a:I

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 16
    iget-boolean v6, v0, Lcom/shabakaty/downloader/gf3;->c:Z

    const-string v7, "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

    if-eqz v6, :cond_0

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u2502 Thread: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v3, v6}, Lcom/shabakaty/downloader/gf3;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v2, v3, v7}, Lcom/shabakaty/downloader/gf3;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x5

    .line 20
    :goto_0
    array-length v8, v5

    const/4 v9, -0x1

    if-ge v6, v8, :cond_2

    .line 21
    aget-object v8, v5, v6

    .line 22
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 23
    const-class v10, Lcom/shabakaty/downloader/qz2;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-class v10, Lcom/shabakaty/downloader/sk2;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    add-int/2addr v6, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    .line 24
    :goto_1
    iget v8, v0, Lcom/shabakaty/downloader/gf3;->b:I

    add-int/2addr v6, v8

    add-int v8, v4, v6

    .line 25
    array-length v10, v5

    if-le v8, v10, :cond_3

    .line 26
    array-length v4, v5

    sub-int/2addr v4, v6

    add-int/2addr v4, v9

    :cond_3
    const-string v8, ""

    :goto_2
    if-lez v4, :cond_5

    add-int v9, v4, v6

    .line 27
    array-length v10, v5

    if-lt v9, v10, :cond_4

    goto :goto_3

    .line 28
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x2502

    .line 29
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    .line 30
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v5, v9

    .line 32
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 33
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "."

    .line 34
    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    .line 35
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 36
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v5, v9

    .line 38
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    .line 39
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ("

    .line 40
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v5, v9

    .line 41
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    .line 42
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v5, v9

    .line 43
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    .line 44
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "   "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 46
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v2, v3, v9}, Lcom/shabakaty/downloader/gf3;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 47
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 48
    array-length v5, v4

    const-string v6, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    const/16 v8, 0xfa0

    if-gt v5, v8, :cond_7

    .line 49
    iget v1, v0, Lcom/shabakaty/downloader/gf3;->a:I

    if-lez v1, :cond_6

    .line 50
    invoke-virtual {v0, v2, v3, v7}, Lcom/shabakaty/downloader/gf3;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_6
    invoke-virtual {v0, v2, v3, p1}, Lcom/shabakaty/downloader/gf3;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v2, v3, v6}, Lcom/shabakaty/downloader/gf3;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 53
    :cond_7
    iget p1, v0, Lcom/shabakaty/downloader/gf3;->a:I

    if-lez p1, :cond_8

    .line 54
    invoke-virtual {v0, v2, v3, v7}, Lcom/shabakaty/downloader/gf3;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    if-ge v1, v5, :cond_9

    sub-int p1, v5, v1

    .line 55
    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 56
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v1, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v2, v3, v7}, Lcom/shabakaty/downloader/gf3;->b(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit16 v1, v1, 0xfa0

    goto :goto_4

    .line 57
    :cond_9
    invoke-virtual {v0, v2, v3, v6}, Lcom/shabakaty/downloader/gf3;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    :goto_6
    new-array v0, v1, [Lcom/shabakaty/downloader/x93;

    .line 58
    invoke-static {v0}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object v4

    .line 59
    invoke-virtual {p0, v4, p1}, Lcom/shabakaty/downloader/nb0;->c(Landroid/os/Bundle;Lcom/shabakaty/downloader/tx2;)V

    .line 60
    invoke-virtual {p0, v4, p1}, Lcom/shabakaty/downloader/nb0;->b(Landroid/os/Bundle;Lcom/shabakaty/downloader/tx2;)V

    .line 61
    iget-object v0, p0, Lcom/shabakaty/downloader/nb0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 62
    iget-object v1, v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/shabakaty/downloader/g66;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "screen_view"

    .line 63
    invoke-virtual/range {v1 .. v7}, Lcom/shabakaty/downloader/g66;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    .line 64
    iget-object v0, p0, Lcom/shabakaty/downloader/nb0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/vx2;

    .line 66
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/vx2;->a(Lcom/shabakaty/downloader/tx2;)V

    goto :goto_7

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/os/Bundle;Lcom/shabakaty/downloader/tx2;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/tx2;->b:Lcom/shabakaty/downloader/sy3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/sy3;->a:Ljava/lang/String;

    const-string v1, "screen_class"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p2, Lcom/shabakaty/downloader/tx2;->b:Lcom/shabakaty/downloader/sy3;

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/sy3;->b:Ljava/lang/String;

    const-string v0, "screen_name"

    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;Lcom/shabakaty/downloader/tx2;)V
    .locals 2

    .line 1
    iget-object p2, p2, Lcom/shabakaty/downloader/tx2;->a:Lcom/shabakaty/downloader/sy3;

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p2, Lcom/shabakaty/downloader/sy3;->a:Ljava/lang/String;

    const-string v1, "previous_screen_class"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p2, Lcom/shabakaty/downloader/sy3;->b:Ljava/lang/String;

    const-string v0, "previous_screen"

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
