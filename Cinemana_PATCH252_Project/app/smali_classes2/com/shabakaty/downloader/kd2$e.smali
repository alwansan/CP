.class public final Lcom/shabakaty/downloader/kd2$e;
.super Lcom/shabakaty/downloader/af2;
.source "KPropertyImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/kd2;-><init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/yh3;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/kd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/kd2<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kd2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/kd2<",
            "+TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/kd2$e;->r:Lcom/shabakaty/downloader/kd2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ov3;->a:Lcom/shabakaty/downloader/ov3;

    iget-object v0, p0, Lcom/shabakaty/downloader/kd2$e;->r:Lcom/shabakaty/downloader/kd2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ov3;->c(Lcom/shabakaty/downloader/yh3;)Lcom/shabakaty/downloader/tb2;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/tb2$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/tb2$c;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/tb2$c;->a:Lcom/shabakaty/downloader/yh3;

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    .line 6
    iget-object v4, v0, Lcom/shabakaty/downloader/tb2$c;->b:Lcom/shabakaty/downloader/vi3;

    .line 7
    iget-object v5, v0, Lcom/shabakaty/downloader/tb2$c;->d:Lcom/shabakaty/downloader/jw2;

    .line 8
    iget-object v6, v0, Lcom/shabakaty/downloader/tb2$c;->e:Lcom/shabakaty/downloader/bu4;

    const/4 v7, 0x1

    .line 9
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/shabakaty/downloader/vb2;->b(Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Z)Lcom/shabakaty/downloader/nb2$a;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 10
    :cond_0
    iget-object v4, p0, Lcom/shabakaty/downloader/kd2$e;->r:Lcom/shabakaty/downloader/kd2;

    const/4 v5, 0x0

    if-eqz v1, :cond_b

    .line 11
    invoke-interface {v1}, Lcom/shabakaty/downloader/tq;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/tq$a;->s:Lcom/shabakaty/downloader/tq$a;

    if-ne v5, v6, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    invoke-interface {v1}, Lcom/shabakaty/downloader/mz4;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 13
    invoke-static {v5}, Lcom/shabakaty/downloader/gr0;->p(Lcom/shabakaty/downloader/qm0;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/gr0;->o(Lcom/shabakaty/downloader/qm0;)Z

    move-result v6

    if-eqz v6, :cond_2

    check-cast v5, Lcom/shabakaty/downloader/q20;

    .line 14
    sget-object v6, Lcom/shabakaty/downloader/p70;->a:Lcom/shabakaty/downloader/p70;

    invoke-static {v6, v5}, Lcom/shabakaty/downloader/md0;->C(Lcom/shabakaty/downloader/p70;Lcom/shabakaty/downloader/q20;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    invoke-interface {v1}, Lcom/shabakaty/downloader/mz4;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/gr0;->p(Lcom/shabakaty/downloader/qm0;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 16
    invoke-interface {v1}, Lcom/shabakaty/downloader/yh3;->z0()Lcom/shabakaty/downloader/na1;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 17
    invoke-interface {v5}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/sa2;->b:Lcom/shabakaty/downloader/fi1;

    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/d9;->m1(Lcom/shabakaty/downloader/fi1;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    .line 18
    :cond_4
    invoke-interface {v1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/sa2;->b:Lcom/shabakaty/downloader/fi1;

    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/d9;->m1(Lcom/shabakaty/downloader/fi1;)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_8

    .line 19
    iget-object v0, v0, Lcom/shabakaty/downloader/tb2$c;->b:Lcom/shabakaty/downloader/vi3;

    .line 20
    invoke-static {v0}, Lcom/shabakaty/downloader/vb2;->d(Lcom/shabakaty/downloader/vi3;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 21
    :cond_6
    invoke-interface {v1}, Lcom/shabakaty/downloader/mz4;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    .line 22
    instance-of v1, v0, Lcom/shabakaty/downloader/q20;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/shabakaty/downloader/q20;

    invoke-static {v0}, Lcom/shabakaty/downloader/ty4;->h(Lcom/shabakaty/downloader/q20;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    .line 23
    :cond_7
    iget-object v0, v4, Lcom/shabakaty/downloader/kd2;->s:Lcom/shabakaty/downloader/oc2;

    .line 24
    invoke-interface {v0}, Lcom/shabakaty/downloader/k20;->b()Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    .line 25
    :cond_8
    :goto_4
    iget-object v0, v4, Lcom/shabakaty/downloader/kd2;->s:Lcom/shabakaty/downloader/oc2;

    .line 26
    invoke-interface {v0}, Lcom/shabakaty/downloader/k20;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_9

    goto :goto_6

    .line 27
    :cond_9
    :try_start_0
    iget-object v1, v3, Lcom/shabakaty/downloader/nb2$a;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 29
    :cond_a
    invoke-static {v7}, Lcom/shabakaty/downloader/nr0;->a(I)V

    throw v2

    .line 30
    :cond_b
    invoke-static {v5}, Lcom/shabakaty/downloader/nr0;->a(I)V

    throw v2

    .line 31
    :cond_c
    instance-of v1, v0, Lcom/shabakaty/downloader/tb2$a;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/shabakaty/downloader/tb2$a;

    .line 32
    iget-object v2, v0, Lcom/shabakaty/downloader/tb2$a;->a:Ljava/lang/reflect/Field;

    goto :goto_6

    .line 33
    :cond_d
    instance-of v1, v0, Lcom/shabakaty/downloader/tb2$b;

    if-eqz v1, :cond_e

    goto :goto_6

    .line 34
    :cond_e
    instance-of v0, v0, Lcom/shabakaty/downloader/tb2$d;

    if-eqz v0, :cond_f

    :catch_0
    :goto_6
    return-object v2

    :cond_f
    new-instance v0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw v0
.end method
