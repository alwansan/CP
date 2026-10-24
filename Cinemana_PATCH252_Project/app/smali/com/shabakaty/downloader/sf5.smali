.class public final Lcom/shabakaty/downloader/sf5;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/shabakaty/downloader/l43<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/shabakaty/downloader/nz4<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/l43;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l43<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/shabakaty/downloader/l43;I)V
    .locals 1

    iput p4, p0, Lcom/shabakaty/downloader/sf5;->a:I

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sf5;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/shabakaty/downloader/sf5;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/shabakaty/downloader/sf5;->d:Lcom/shabakaty/downloader/l43;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sf5;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/shabakaty/downloader/sf5;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/shabakaty/downloader/sf5;->d:Lcom/shabakaty/downloader/l43;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sf5;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/shabakaty/downloader/sf5;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/shabakaty/downloader/sf5;->d:Lcom/shabakaty/downloader/l43;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/re5;

    iget-object v1, p0, Lcom/shabakaty/downloader/sf5;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/shabakaty/downloader/sf5;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/shabakaty/downloader/sf5;->d:Lcom/shabakaty/downloader/l43;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/shabakaty/downloader/re5;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/shabakaty/downloader/l43;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 3
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/l43;

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/l31;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p2, Lcom/shabakaty/downloader/p31;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0xf

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "No encoder for "

    invoke-static {v1, v0, p1}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/p31;-><init>(Ljava/lang/String;)V

    throw p2
.end method
