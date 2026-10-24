.class public final Lcom/shabakaty/downloader/fh3$a;
.super Lcom/shabakaty/downloader/ui4;
.source "ProfileViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.ProfileViewModel$reload$1"
    f = "ProfileViewModel.kt"
    l = {
        0x6f,
        0x83
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/fh3;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public final synthetic w:Lcom/shabakaty/downloader/fh3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fh3;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fh3;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/fh3$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/fh3$a;->w:Lcom/shabakaty/downloader/fh3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/fh3$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/fh3$a;->w:Lcom/shabakaty/downloader/fh3;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/fh3$a;-><init>(Lcom/shabakaty/downloader/fh3;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/fh3$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/fh3$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/fh3$a;->w:Lcom/shabakaty/downloader/fh3;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/fh3$a;-><init>(Lcom/shabakaty/downloader/fh3;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/fh3$a;->v:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    const-wide/16 v4, 0x3e8

    .line 4
    iput v2, p0, Lcom/shabakaty/downloader/fh3$a;->v:I

    invoke-static {v4, v5, p0}, Lcom/shabakaty/downloader/rm3;->f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/fh3$a;->w:Lcom/shabakaty/downloader/fh3;

    .line 6
    iget-object v1, p1, Lcom/shabakaty/downloader/fh3;->m:Lcom/shabakaty/downloader/u43;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/fh3;->h:Lcom/shabakaty/usermanagement/UserManagement;

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/u43;->g(Z)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/fh3$a;->w:Lcom/shabakaty/downloader/fh3;

    .line 10
    iget-object v1, p1, Lcom/shabakaty/downloader/fh3;->m:Lcom/shabakaty/downloader/u43;

    .line 11
    iget-boolean v1, v1, Lcom/shabakaty/downloader/u43;->s:Z

    if-eqz v1, :cond_4

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/fh3;->h:Lcom/shabakaty/usermanagement/UserManagement;

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->getUserScheme()Lcom/shabakaty/usermanagement/data/model/UserScheme;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->observeRxFirstName()Lcom/shabakaty/downloader/qf1;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->observeRxLastName()Lcom/shabakaty/downloader/qf1;

    move-result-object v4

    .line 16
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->observeRxPictureSmall()Lcom/shabakaty/downloader/qf1;

    move-result-object v5

    .line 17
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->observeRxPictureLarge()Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    sget-object v6, Lcom/shabakaty/downloader/dx4;->z:Lcom/shabakaty/downloader/dx4;

    .line 18
    sget v7, Lcom/shabakaty/downloader/qf1;->r:I

    const-string v7, "source1 is null"

    .line 19
    invoke-static {v1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "source2 is null"

    .line 20
    invoke-static {v4, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "source3 is null"

    .line 21
    invoke-static {v5, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "source4 is null"

    .line 22
    invoke-static {p1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    new-instance v7, Lcom/shabakaty/downloader/do1$c;

    invoke-direct {v7, v6}, Lcom/shabakaty/downloader/do1$c;-><init>(Lcom/shabakaty/downloader/dx4;)V

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/shabakaty/downloader/wj3;

    const/4 v8, 0x0

    aput-object v1, v6, v8

    aput-object v4, v6, v2

    aput-object v5, v6, v3

    const/4 v1, 0x3

    aput-object p1, v6, v1

    .line 24
    sget p1, Lcom/shabakaty/downloader/qf1;->r:I

    const-string v1, "bufferSize"

    .line 25
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/n43;->a(ILjava/lang/String;)I

    .line 26
    new-instance v1, Lcom/shabakaty/downloader/tf1;

    invoke-direct {v1, v6, v7, p1, v8}, Lcom/shabakaty/downloader/tf1;-><init>([Lcom/shabakaty/downloader/wj3;Lcom/shabakaty/downloader/in1;IZ)V

    .line 27
    sget-object p1, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 28
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/qf1;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/qf1;->f(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    .line 30
    iget-object v1, p0, Lcom/shabakaty/downloader/fh3$a;->w:Lcom/shabakaty/downloader/fh3;

    new-instance v2, Lcom/shabakaty/downloader/eh3;

    invoke-direct {v2, v1, v3}, Lcom/shabakaty/downloader/eh3;-><init>(Lcom/shabakaty/downloader/fh3;I)V

    .line 31
    sget-object v1, Lcom/shabakaty/downloader/do1;->e:Lcom/shabakaty/downloader/xc0;

    sget-object v4, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    sget-object v5, Lcom/shabakaty/downloader/jg1;->r:Lcom/shabakaty/downloader/jg1;

    invoke-virtual {p1, v2, v1, v4, v5}, Lcom/shabakaty/downloader/qf1;->g(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 32
    iget-object v1, p0, Lcom/shabakaty/downloader/fh3$a;->w:Lcom/shabakaty/downloader/fh3;

    .line 33
    iget-object v1, v1, Lcom/shabakaty/downloader/xk;->b:Lcom/shabakaty/downloader/c90;

    .line 34
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    .line 35
    iget-object p1, p0, Lcom/shabakaty/downloader/fh3$a;->w:Lcom/shabakaty/downloader/fh3;

    .line 36
    iget-object v1, p1, Lcom/shabakaty/downloader/fh3;->n:Lcom/shabakaty/downloader/xv2;

    .line 37
    iget-object p1, p1, Lcom/shabakaty/downloader/fh3;->h:Lcom/shabakaty/usermanagement/UserManagement;

    .line 38
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/shabakaty/downloader/fh3$a;->w:Lcom/shabakaty/downloader/fh3;

    .line 40
    iget-object p1, p1, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 41
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    .line 42
    iget-object p1, p0, Lcom/shabakaty/downloader/fh3$a;->w:Lcom/shabakaty/downloader/fh3;

    iput v3, p0, Lcom/shabakaty/downloader/fh3$a;->v:I

    invoke-static {p1, p0}, Lcom/shabakaty/downloader/fh3;->p(Lcom/shabakaty/downloader/fh3;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 43
    :cond_4
    iget-object p1, p1, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 44
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    .line 45
    :cond_5
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
