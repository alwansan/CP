.class public final Lcom/shabakaty/downloader/v45;
.super Ljava/lang/Object;
.source "Visibilities.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/v45$e;,
        Lcom/shabakaty/downloader/v45$f;,
        Lcom/shabakaty/downloader/v45$g;,
        Lcom/shabakaty/downloader/v45$b;,
        Lcom/shabakaty/downloader/v45$h;,
        Lcom/shabakaty/downloader/v45$d;,
        Lcom/shabakaty/downloader/v45$a;,
        Lcom/shabakaty/downloader/v45$c;,
        Lcom/shabakaty/downloader/v45$i;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/v45;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/y45;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/shabakaty/downloader/v45;

    invoke-direct {v0}, Lcom/shabakaty/downloader/v45;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/v45;->a:Lcom/shabakaty/downloader/v45;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dm2;

    const/16 v1, 0x8

    .line 2
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dm2;-><init>(I)V

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/v45$f;->c:Lcom/shabakaty/downloader/v45$f;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/dm2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/v45$e;->c:Lcom/shabakaty/downloader/v45$e;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/dm2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/v45$b;->c:Lcom/shabakaty/downloader/v45$b;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/dm2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/v45$g;->c:Lcom/shabakaty/downloader/v45$g;

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/dm2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/v45$h;->c:Lcom/shabakaty/downloader/v45$h;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/dm2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->c()V

    .line 9
    iput-boolean v2, v0, Lcom/shabakaty/downloader/dm2;->C:Z

    .line 10
    sput-object v0, Lcom/shabakaty/downloader/v45;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/y45;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/v45$e;->c:Lcom/shabakaty/downloader/v45$e;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/shabakaty/downloader/v45$f;->c:Lcom/shabakaty/downloader/v45$f;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
