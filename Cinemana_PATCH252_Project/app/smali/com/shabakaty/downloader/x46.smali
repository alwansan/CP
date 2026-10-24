.class public abstract Lcom/shabakaty/downloader/x46;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# static fields
.field public static final a:Lcom/shabakaty/downloader/sf5;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/jf5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jf5;-><init>()V

    .line 2
    const-class v1, Lcom/shabakaty/downloader/x46;

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/ft5;->a:Lcom/shabakaty/downloader/ft5;

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/m31;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    const-class v1, Lcom/shabakaty/downloader/ns2;

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/em5;->a:Lcom/shabakaty/downloader/em5;

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/m31;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    const-class v1, Lcom/shabakaty/downloader/ms2;

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/ld5;->a:Lcom/shabakaty/downloader/ld5;

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/m31;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/sf5;

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, v0, Lcom/shabakaty/downloader/jf5;->a:Ljava/util/Map;

    .line 7
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v3, Ljava/util/HashMap;

    iget-object v4, v0, Lcom/shabakaty/downloader/jf5;->b:Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v0, v0, Lcom/shabakaty/downloader/jf5;->c:Lcom/shabakaty/downloader/l43;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/shabakaty/downloader/sf5;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/shabakaty/downloader/l43;I)V

    .line 8
    sput-object v1, Lcom/shabakaty/downloader/x46;->a:Lcom/shabakaty/downloader/sf5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/shabakaty/downloader/ns2;
.end method
