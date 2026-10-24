.class public final Lcom/shabakaty/downloader/fz2;
.super Ljava/lang/Object;
.source "NewKotlinTypeChecker.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ez2;


# instance fields
.field public final c:Lcom/shabakaty/downloader/ve2;

.field public final d:Lcom/shabakaty/downloader/ue2;

.field public final e:Lcom/shabakaty/downloader/a93;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ve2;Lcom/shabakaty/downloader/ue2;)V
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypePreparator"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/fz2;->c:Lcom/shabakaty/downloader/ve2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/fz2;->d:Lcom/shabakaty/downloader/ue2;

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/a93;

    sget-object v0, Lcom/shabakaty/downloader/a93;->e:Lcom/shabakaty/downloader/re2$a;

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/a93;-><init>(Lcom/shabakaty/downloader/re2$a;Lcom/shabakaty/downloader/ve2;)V

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/fz2;->e:Lcom/shabakaty/downloader/a93;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/a93;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fz2;->e:Lcom/shabakaty/downloader/a93;

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/ve2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fz2;->c:Lcom/shabakaty/downloader/ve2;

    return-object v0
.end method

.method public c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z
    .locals 7

    const-string v0, "a"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v5, p0, Lcom/shabakaty/downloader/fz2;->c:Lcom/shabakaty/downloader/ve2;

    .line 2
    iget-object v4, p0, Lcom/shabakaty/downloader/fz2;->d:Lcom/shabakaty/downloader/ue2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x6

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/z02;->d(ZZLcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/ue2;Lcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/qs4;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/shabakaty/downloader/fz2;->d(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qw4;)Z

    move-result p1

    return p1
.end method

.method public final d(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qw4;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "a"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/j1;->d(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Z

    move-result p1

    return p1
.end method

.method public e(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z
    .locals 7

    const-string v0, "subtype"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertype"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v5, p0, Lcom/shabakaty/downloader/fz2;->c:Lcom/shabakaty/downloader/ve2;

    .line 2
    iget-object v4, p0, Lcom/shabakaty/downloader/fz2;->d:Lcom/shabakaty/downloader/ue2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x6

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/z02;->d(ZZLcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/ue2;Lcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/qs4;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/shabakaty/downloader/fz2;->f(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qw4;)Z

    move-result p1

    return p1
.end method

.method public final f(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qw4;)Z
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subType"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/j1;->a:Lcom/shabakaty/downloader/j1;

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/j1;->h(Lcom/shabakaty/downloader/j1;Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;ZI)Z

    move-result p1

    return p1
.end method
