.class public Lcom/shabakaty/downloader/x65$k;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/x65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/x65;


# instance fields
.field public final a:Lcom/shabakaty/downloader/x65;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/x65$d;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x65$d;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/x65$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x65$c;-><init>()V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/x65$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x65$b;-><init>()V

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/x65$e;->b()Lcom/shabakaty/downloader/x65;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x65$k;->a()Lcom/shabakaty/downloader/x65;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x65$k;->b()Lcom/shabakaty/downloader/x65;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/x65;->a()Lcom/shabakaty/downloader/x65;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/x65$k;->b:Lcom/shabakaty/downloader/x65;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/x65;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/x65$k;->a:Lcom/shabakaty/downloader/x65;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/x65;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65$k;->a:Lcom/shabakaty/downloader/x65;

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/x65;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65$k;->a:Lcom/shabakaty/downloader/x65;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/x65;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65$k;->a:Lcom/shabakaty/downloader/x65;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e()Lcom/shabakaty/downloader/ju0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/x65$k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/x65$k;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x65$k;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/x65$k;->k()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x65$k;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/x65$k;->j()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x65$k;->h()Lcom/shabakaty/downloader/r12;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/x65$k;->h()Lcom/shabakaty/downloader/r12;

    move-result-object v3

    .line 6
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x65$k;->g()Lcom/shabakaty/downloader/r12;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/x65$k;->g()Lcom/shabakaty/downloader/r12;

    move-result-object v3

    .line 8
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x65$k;->e()Lcom/shabakaty/downloader/ju0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/x65$k;->e()Lcom/shabakaty/downloader/ju0;

    move-result-object p1

    .line 10
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lcom/shabakaty/downloader/r12;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x65$k;->h()Lcom/shabakaty/downloader/r12;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/shabakaty/downloader/r12;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/r12;->e:Lcom/shabakaty/downloader/r12;

    return-object v0
.end method

.method public h()Lcom/shabakaty/downloader/r12;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/r12;->e:Lcom/shabakaty/downloader/r12;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x65$k;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/x65$k;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/x65$k;->h()Lcom/shabakaty/downloader/r12;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x65$k;->g()Lcom/shabakaty/downloader/r12;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/x65$k;->e()Lcom/shabakaty/downloader/ju0;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i(IIII)Lcom/shabakaty/downloader/x65;
    .locals 0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/x65$k;->b:Lcom/shabakaty/downloader/x65;

    return-object p1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l([Lcom/shabakaty/downloader/r12;)V
    .locals 0

    return-void
.end method

.method public m(Lcom/shabakaty/downloader/x65;)V
    .locals 0

    return-void
.end method

.method public n(Lcom/shabakaty/downloader/r12;)V
    .locals 0

    return-void
.end method
