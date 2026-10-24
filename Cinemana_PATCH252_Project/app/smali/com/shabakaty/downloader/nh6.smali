.class public final Lcom/shabakaty/downloader/nh6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/l43;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l43<",
        "Lcom/shabakaty/downloader/pq6;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/nh6;

.field public static final b:Lcom/shabakaty/downloader/ma1;

.field public static final c:Lcom/shabakaty/downloader/ma1;

.field public static final d:Lcom/shabakaty/downloader/ma1;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/shabakaty/downloader/nh6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nh6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/nh6;->a:Lcom/shabakaty/downloader/nh6;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/u74;

    const/4 v1, 0x6

    .line 2
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 8
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "imageFormat"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 9
    sput-object v0, Lcom/shabakaty/downloader/nh6;->b:Lcom/shabakaty/downloader/ma1;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 11
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x2

    .line 12
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 17
    invoke-static {v2}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "originalImageSize"

    invoke-direct {v0, v3, v2, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 18
    sput-object v0, Lcom/shabakaty/downloader/nh6;->c:Lcom/shabakaty/downloader/ma1;

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/u74;

    .line 20
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v1, 0x3

    .line 21
    iput v1, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 22
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 26
    invoke-static {v1}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "compressedImageSize"

    invoke-direct {v0, v2, v1, v4}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 27
    sput-object v0, Lcom/shabakaty/downloader/nh6;->d:Lcom/shabakaty/downloader/ma1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/pq6;

    check-cast p2, Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/nh6;->b:Lcom/shabakaty/downloader/ma1;

    .line 1
    iget-object v1, p1, Lcom/shabakaty/downloader/pq6;->a:Lcom/shabakaty/downloader/nq6;

    .line 2
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/nh6;->c:Lcom/shabakaty/downloader/ma1;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/pq6;->b:Ljava/lang/Integer;

    .line 4
    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    sget-object p1, Lcom/shabakaty/downloader/nh6;->d:Lcom/shabakaty/downloader/ma1;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    return-void
.end method
