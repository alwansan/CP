.class public Lcom/shabakaty/downloader/x65;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/x65$a;,
        Lcom/shabakaty/downloader/x65$d;,
        Lcom/shabakaty/downloader/x65$c;,
        Lcom/shabakaty/downloader/x65$b;,
        Lcom/shabakaty/downloader/x65$e;,
        Lcom/shabakaty/downloader/x65$j;,
        Lcom/shabakaty/downloader/x65$i;,
        Lcom/shabakaty/downloader/x65$h;,
        Lcom/shabakaty/downloader/x65$g;,
        Lcom/shabakaty/downloader/x65$f;,
        Lcom/shabakaty/downloader/x65$k;
    }
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/x65;


# instance fields
.field public final a:Lcom/shabakaty/downloader/x65$k;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/x65$j;->r:Lcom/shabakaty/downloader/x65;

    sput-object v0, Lcom/shabakaty/downloader/x65;->b:Lcom/shabakaty/downloader/x65;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/x65$k;->b:Lcom/shabakaty/downloader/x65;

    sput-object v0, Lcom/shabakaty/downloader/x65;->b:Lcom/shabakaty/downloader/x65;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/x65$j;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/x65$j;-><init>(Lcom/shabakaty/downloader/x65;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/x65$i;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/x65$i;-><init>(Lcom/shabakaty/downloader/x65;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/x65$h;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/x65$h;-><init>(Lcom/shabakaty/downloader/x65;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/x65$g;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/x65$g;-><init>(Lcom/shabakaty/downloader/x65;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/x65;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/x65$k;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/x65$k;-><init>(Lcom/shabakaty/downloader/x65;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    return-void
.end method

.method public static f(Lcom/shabakaty/downloader/r12;IIII)Lcom/shabakaty/downloader/r12;
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/r12;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    iget v2, p0, Lcom/shabakaty/downloader/r12;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3
    iget v3, p0, Lcom/shabakaty/downloader/r12;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4
    iget v4, p0, Lcom/shabakaty/downloader/r12;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-static {v0, v2, v3, v1}, Lcom/shabakaty/downloader/r12;->a(IIII)Lcom/shabakaty/downloader/r12;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/view/WindowInsets;)Lcom/shabakaty/downloader/x65;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/x65;->j(Landroid/view/WindowInsets;Landroid/view/View;)Lcom/shabakaty/downloader/x65;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/view/WindowInsets;Landroid/view/View;)Lcom/shabakaty/downloader/x65;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/x65;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/x65;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    sget-object p0, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 6
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p0, v1, :cond_0

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/c35$d;->a(Landroid/view/View;)Lcom/shabakaty/downloader/x65;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/c35$c;->c(Landroid/view/View;)Lcom/shabakaty/downloader/x65;

    move-result-object p0

    .line 9
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    invoke-virtual {v1, p0}, Lcom/shabakaty/downloader/x65$k;->m(Lcom/shabakaty/downloader/x65;)V

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 11
    iget-object p1, v0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/x65$k;->d(Landroid/view/View;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/x65;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x65$k;->c()Lcom/shabakaty/downloader/x65;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x65$k;->h()Lcom/shabakaty/downloader/r12;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/r12;->d:I

    return v0
.end method

.method public c()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x65$k;->h()Lcom/shabakaty/downloader/r12;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/r12;->a:I

    return v0
.end method

.method public d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x65$k;->h()Lcom/shabakaty/downloader/r12;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/r12;->c:I

    return v0
.end method

.method public e()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x65$k;->h()Lcom/shabakaty/downloader/r12;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/r12;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/x65;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/x65;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    iget-object p1, p1, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    .line 4
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x65$k;->j()Z

    move-result v0

    return v0
.end method

.method public h()Landroid/view/WindowInsets;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    instance-of v1, v0, Lcom/shabakaty/downloader/x65$f;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/x65$f;

    iget-object v0, v0, Lcom/shabakaty/downloader/x65$f;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/x65$k;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
