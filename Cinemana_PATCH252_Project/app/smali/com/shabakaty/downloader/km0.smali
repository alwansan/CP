.class public final Lcom/shabakaty/downloader/km0;
.super Ljava/lang/Object;
.source "DbModule_ProvideDatabase$app_productionBetaReleaseFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/xl2;

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xl2;Lcom/shabakaty/downloader/oj3;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/km0;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/km0;->b:Lcom/shabakaty/downloader/xl2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/km0;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/km0;->b:Lcom/shabakaty/downloader/xl2;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/km0;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 7
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/km0;->b:Lcom/shabakaty/downloader/xl2;

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/km0;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 10
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/km0;->b:Lcom/shabakaty/downloader/xl2;

    .line 12
    iput-object p2, p0, Lcom/shabakaty/downloader/km0;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 13
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/shabakaty/downloader/km0;->b:Lcom/shabakaty/downloader/xl2;

    .line 15
    iput-object p2, p0, Lcom/shabakaty/downloader/km0;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 16
    :cond_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/shabakaty/downloader/km0;->b:Lcom/shabakaty/downloader/xl2;

    .line 18
    iput-object p2, p0, Lcom/shabakaty/downloader/km0;->c:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/shabakaty/downloader/km0;->a:I

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    const-string v2, "appDatabase"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/km0;->b:Lcom/shabakaty/downloader/xl2;

    iget-object v3, p0, Lcom/shabakaty/downloader/km0;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/data/db/AppDatabase;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Lcom/shabakaty/cinemana/data/db/AppDatabase;->s()Lcom/shabakaty/downloader/g25;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 6
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/km0;->b:Lcom/shabakaty/downloader/xl2;

    iget-object v3, p0, Lcom/shabakaty/downloader/km0;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/data/db/AppDatabase;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Lcom/shabakaty/cinemana/data/db/AppDatabase;->r()Lcom/shabakaty/downloader/u24;

    move-result-object v0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 11
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/km0;->b:Lcom/shabakaty/downloader/xl2;

    iget-object v3, p0, Lcom/shabakaty/downloader/km0;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/data/db/AppDatabase;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3}, Lcom/shabakaty/cinemana/data/db/AppDatabase;->q()Lcom/shabakaty/downloader/vy3;

    move-result-object v0

    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 16
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/km0;->b:Lcom/shabakaty/downloader/xl2;

    iget-object v3, p0, Lcom/shabakaty/downloader/km0;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/data/db/AppDatabase;

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Lcom/shabakaty/cinemana/data/db/AppDatabase;->p()Lcom/shabakaty/downloader/jw0;

    move-result-object v0

    .line 20
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 21
    :pswitch_4
    iget-object v0, p0, Lcom/shabakaty/downloader/km0;->b:Lcom/shabakaty/downloader/xl2;

    iget-object v1, p0, Lcom/shabakaty/downloader/km0;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 22
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "context"

    .line 23
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    const-class v0, Lcom/shabakaty/cinemana/data/db/AppDatabase;

    const-string v2, "localDatabase.db"

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ut3;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lcom/shabakaty/downloader/vt3$a;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/shabakaty/downloader/ht2;

    .line 25
    sget-object v2, Lcom/shabakaty/downloader/it2;->a:Lcom/shabakaty/downloader/it2;

    .line 26
    sget-object v2, Lcom/shabakaty/downloader/it2;->q:Lcom/shabakaty/downloader/ht2;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 27
    sget-object v2, Lcom/shabakaty/downloader/it2;->p:Lcom/shabakaty/downloader/kf2;

    check-cast v2, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ht2;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    .line 28
    sget-object v5, Lcom/shabakaty/downloader/mt2;->a:Lcom/shabakaty/downloader/kf2;

    check-cast v5, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/o00$a;

    aput-object v5, v1, v2

    const/4 v2, 0x3

    .line 29
    sget-object v5, Lcom/shabakaty/downloader/mt2;->b:Lcom/shabakaty/downloader/kf2;

    check-cast v5, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/o00$b;

    aput-object v5, v1, v2

    .line 30
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vt3$a;->a([Lcom/shabakaty/downloader/ht2;)Lcom/shabakaty/downloader/vt3$a;

    .line 31
    iput-boolean v3, v0, Lcom/shabakaty/downloader/vt3$a;->i:Z

    .line 32
    iput-boolean v4, v0, Lcom/shabakaty/downloader/vt3$a;->j:Z

    .line 33
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3$a;->b()Lcom/shabakaty/downloader/vt3;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/data/db/AppDatabase;

    return-object v0

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/km0;->b:Lcom/shabakaty/downloader/xl2;

    iget-object v3, p0, Lcom/shabakaty/downloader/km0;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/data/db/AppDatabase;

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3}, Lcom/shabakaty/cinemana/data/db/AppDatabase;->t()Lcom/shabakaty/downloader/s25;

    move-result-object v0

    .line 38
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
