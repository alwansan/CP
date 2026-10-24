.class public Lcom/shabakaty/downloader/z7$c;
.super Lcom/shabakaty/downloader/lc4$a;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/z7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public K:Lcom/shabakaty/downloader/jl2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/jl2<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public L:Lcom/shabakaty/downloader/w94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/w94<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/z7$c;Lcom/shabakaty/downloader/z7;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/lc4$a;-><init>(Lcom/shabakaty/downloader/lc4$a;Lcom/shabakaty/downloader/lc4;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/z7$c;->K:Lcom/shabakaty/downloader/jl2;

    iput-object p2, p0, Lcom/shabakaty/downloader/z7$c;->K:Lcom/shabakaty/downloader/jl2;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/z7$c;->L:Lcom/shabakaty/downloader/w94;

    iput-object p1, p0, Lcom/shabakaty/downloader/z7$c;->L:Lcom/shabakaty/downloader/w94;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/jl2;

    const/16 p2, 0xa

    .line 5
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/jl2;-><init>(I)V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/z7$c;->K:Lcom/shabakaty/downloader/jl2;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/w94;

    invoke-direct {p1}, Lcom/shabakaty/downloader/w94;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/z7$c;->L:Lcom/shabakaty/downloader/w94;

    :goto_0
    return-void
.end method

.method public static h(II)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z7$c;->K:Lcom/shabakaty/downloader/jl2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/jl2;->c()Lcom/shabakaty/downloader/jl2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/z7$c;->K:Lcom/shabakaty/downloader/jl2;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/z7$c;->L:Lcom/shabakaty/downloader/w94;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/w94;->b()Lcom/shabakaty/downloader/w94;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/z7$c;->L:Lcom/shabakaty/downloader/w94;

    return-void
.end method

.method public i(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/z7$c;->L:Lcom/shabakaty/downloader/w94;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/shabakaty/downloader/w94;->f(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/z7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/z7;-><init>(Lcom/shabakaty/downloader/z7$c;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/z7;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/z7;-><init>(Lcom/shabakaty/downloader/z7$c;Landroid/content/res/Resources;)V

    return-object v0
.end method
