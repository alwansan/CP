.class public Lcom/shabakaty/downloader/yo;
.super Ljava/lang/Object;
.source "BundleCompat.java"

# interfaces
.implements Lcom/shabakaty/downloader/wo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/wo<",
        "Landroid/os/PersistableBundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/yo;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 7

    const/4 v0, 0x6

    iput v0, p0, Lcom/shabakaty/downloader/yo;->a:I

    const-string v0, "timeUnit"

    .line 1
    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/un3;

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/il4;->h:Lcom/shabakaty/downloader/il4;

    move-object v1, v0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/un3;-><init>(Lcom/shabakaty/downloader/il4;IJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/yo;-><init>(Lcom/shabakaty/downloader/un3;)V

    return-void
.end method

.method public constructor <init>(ILcom/shabakaty/downloader/io2;)V
    .locals 2

    iput p1, p0, Lcom/shabakaty/downloader/yo;->a:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1}, Landroid/os/PersistableBundle;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    return-void

    .line 16
    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 p2, 0x5

    const-wide/16 v0, 0x5

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/shabakaty/downloader/yo;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void

    .line 17
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/lr1;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/yo;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/qm0;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/shabakaty/downloader/yo;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/r02;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/yo;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/un3;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/shabakaty/downloader/yo;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/yo;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, [Ljava/lang/Object;

    .line 3
    array-length v0, p1

    if-lez v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 6
    :cond_1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 8
    :cond_2
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_5

    .line 12
    check-cast p1, Ljava/util/Iterator;

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Don\'t know how to spread "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Ljava/lang/StringBuilder;Landroid/os/Bundle;)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/lr1;

    invoke-virtual {p0, p2, v0}, Lcom/shabakaty/downloader/yo;->v(Landroid/os/Bundle;Lcom/shabakaty/downloader/lr1;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "arguments:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-object p1
.end method

.method public l(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/sy3;)Ljava/lang/StringBuilder;
    .locals 2

    const-string v0, "Current Screen"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "----------------"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/yo;->n(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/sy3;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public m(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/sy3;)Ljava/lang/StringBuilder;
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "Previous Screen"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "----------------"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/yo;->n(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/sy3;)Ljava/lang/StringBuilder;

    const-string p2, ""

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-object p1
.end method

.method public n(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/sy3;)Ljava/lang/StringBuilder;
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/sy3;->a:Ljava/lang/String;

    const-string v1, "Class: "

    .line 2
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/sy3;->b:Ljava/lang/String;

    const-string v1, "Name: "

    .line 4
    invoke-static {v1, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public o(I)Lcom/shabakaty/downloader/e8;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e8;->r:Lcom/shabakaty/downloader/e8;

    packed-switch p1, :pswitch_data_0

    return-object v0

    .line 2
    :pswitch_0
    sget-object p1, Lcom/shabakaty/downloader/e8;->A:Lcom/shabakaty/downloader/e8;

    return-object p1

    .line 3
    :pswitch_1
    sget-object p1, Lcom/shabakaty/downloader/e8;->z:Lcom/shabakaty/downloader/e8;

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/shabakaty/downloader/e8;->y:Lcom/shabakaty/downloader/e8;

    return-object p1

    .line 5
    :pswitch_3
    sget-object p1, Lcom/shabakaty/downloader/e8;->x:Lcom/shabakaty/downloader/e8;

    return-object p1

    .line 6
    :pswitch_4
    sget-object p1, Lcom/shabakaty/downloader/e8;->w:Lcom/shabakaty/downloader/e8;

    return-object p1

    .line 7
    :pswitch_5
    sget-object p1, Lcom/shabakaty/downloader/e8;->v:Lcom/shabakaty/downloader/e8;

    return-object p1

    .line 8
    :pswitch_6
    sget-object p1, Lcom/shabakaty/downloader/e8;->u:Lcom/shabakaty/downloader/e8;

    return-object p1

    .line 9
    :pswitch_7
    sget-object p1, Lcom/shabakaty/downloader/e8;->t:Lcom/shabakaty/downloader/e8;

    return-object p1

    .line 10
    :pswitch_8
    sget-object p1, Lcom/shabakaty/downloader/e8;->s:Lcom/shabakaty/downloader/e8;

    return-object p1

    :pswitch_9
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p(I)Lcom/shabakaty/downloader/pu3;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/pu3;->t:Lcom/shabakaty/downloader/pu3;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/pu3;->s:Lcom/shabakaty/downloader/pu3;

    return-object p1

    .line 3
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/pu3;->r:Lcom/shabakaty/downloader/pu3;

    return-object p1
.end method

.method public q(Landroid/content/res/TypedArray;)V
    .locals 8

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/16 v2, 0x15e

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    move-wide v2, v4

    :cond_0
    const/4 v4, 0x1

    .line 3
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 4
    invoke-virtual {p0, v5}, Lcom/shabakaty/downloader/yo;->o(I)Lcom/shabakaty/downloader/e8;

    move-result-object v5

    const/16 v6, 0xb

    .line 5
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 6
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/yo;->p(I)Lcom/shabakaty/downloader/pu3;

    move-result-object v4

    const/4 v6, 0x5

    .line 7
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v6, 0x6

    const/16 v7, 0xbb8

    .line 8
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-long v6, p1

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/r02;

    .line 10
    iput-wide v2, p1, Lcom/shabakaty/downloader/r02;->r:J

    .line 11
    iput-boolean v0, p1, Lcom/shabakaty/downloader/r02;->m:Z

    .line 12
    iput-object v5, p1, Lcom/shabakaty/downloader/r02;->y:Lcom/shabakaty/downloader/e8;

    .line 13
    iput-object v4, p1, Lcom/shabakaty/downloader/r02;->z:Lcom/shabakaty/downloader/pu3;

    .line 14
    iput-boolean v1, p1, Lcom/shabakaty/downloader/r02;->p:Z

    .line 15
    iput-wide v6, p1, Lcom/shabakaty/downloader/r02;->q:J

    return-void
.end method

.method public r(Landroid/content/res/TypedArray;)V
    .locals 3

    const-string v0, "#33ffffff"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    const-string v1, "#ffffff"

    .line 2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/r02;

    .line 4
    iput v0, v1, Lcom/shabakaty/downloader/r02;->k:I

    .line 5
    iput p1, v1, Lcom/shabakaty/downloader/r02;->l:I

    return-void
.end method

.method public s(Landroid/content/res/TypedArray;)V
    .locals 7

    const/16 v0, 0x11

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 2
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 3
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v5, 0x3

    .line 4
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const/16 v1, 0xd

    .line 5
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    if-lez v5, :cond_2

    add-int/lit8 v4, v5, -0x1

    if-le p1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, p1

    .line 6
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/r02;

    .line 7
    iput v0, p1, Lcom/shabakaty/downloader/r02;->w:I

    .line 8
    iput-boolean v2, p1, Lcom/shabakaty/downloader/r02;->n:Z

    .line 9
    iput-boolean v3, p1, Lcom/shabakaty/downloader/r02;->o:Z

    .line 10
    iput v5, p1, Lcom/shabakaty/downloader/r02;->s:I

    .line 11
    iput v4, p1, Lcom/shabakaty/downloader/r02;->t:I

    .line 12
    iput v4, p1, Lcom/shabakaty/downloader/r02;->u:I

    .line 13
    iput v4, p1, Lcom/shabakaty/downloader/r02;->v:I

    return-void
.end method

.method public t(Landroid/content/res/TypedArray;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/n83;->r:Lcom/shabakaty/downloader/n83;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/n83;->s:Lcom/shabakaty/downloader/n83;

    :goto_0
    const/16 v3, 0xa

    const/4 v4, 0x6

    .line 3
    invoke-static {v4}, Lcom/shabakaty/downloader/nl6;->e(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    if-gez v3, :cond_1

    const/4 v3, 0x0

    :cond_1
    const/16 v4, 0x9

    .line 4
    invoke-static {v1}, Lcom/shabakaty/downloader/nl6;->e(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    const/16 v4, 0xc

    const v5, 0x3f333333    # 0.7f

    .line 5
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v5

    if-gez v7, :cond_3

    const v4, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_3
    cmpl-float v5, v4, v6

    if-lez v5, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_4
    :goto_1
    const/16 v5, 0xf

    const/4 v6, 0x1

    .line 6
    invoke-static {v6}, Lcom/shabakaty/downloader/nl6;->e(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    if-le p1, v3, :cond_5

    move p1, v3

    .line 7
    :cond_5
    iget-object v5, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/r02;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/r02;->a()Lcom/shabakaty/downloader/e8;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/e8;->w:Lcom/shabakaty/downloader/e8;

    if-eq v5, v6, :cond_6

    goto :goto_2

    :cond_6
    move v2, p1

    .line 8
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/r02;

    .line 9
    iput v3, p1, Lcom/shabakaty/downloader/r02;->c:I

    .line 10
    iput-object v0, p1, Lcom/shabakaty/downloader/r02;->x:Lcom/shabakaty/downloader/n83;

    .line 11
    iput v1, p1, Lcom/shabakaty/downloader/r02;->d:I

    .line 12
    iput v4, p1, Lcom/shabakaty/downloader/r02;->j:F

    .line 13
    iput v2, p1, Lcom/shabakaty/downloader/r02;->i:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/yo;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "ImmutableJSONObject{jsonObject="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public u()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public v(Landroid/os/Bundle;Lcom/shabakaty/downloader/lr1;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/downloader/nl6;->x(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/lr1;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    const-string p2, "navigation_event"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v0
.end method
