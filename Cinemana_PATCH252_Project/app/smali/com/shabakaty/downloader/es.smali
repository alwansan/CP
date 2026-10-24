.class public final synthetic Lcom/shabakaty/downloader/es;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/mt$a;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/es;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/es;

    invoke-direct {v0}, Lcom/shabakaty/downloader/es;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/es;->a:Lcom/shabakaty/downloader/es;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Lcom/shabakaty/downloader/mt;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/shabakaty/downloader/is;

    invoke-direct {v0, p1, p2, p3}, Lcom/shabakaty/downloader/is;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/iu; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/v02;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/v02;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
