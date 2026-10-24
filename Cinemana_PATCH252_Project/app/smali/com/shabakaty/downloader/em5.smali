.class public final Lcom/shabakaty/downloader/em5;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/l43;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l43<",
        "Lcom/shabakaty/downloader/ns2;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/em5;

.field public static final b:Lcom/shabakaty/downloader/ma1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/shabakaty/downloader/em5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/em5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/em5;->a:Lcom/shabakaty/downloader/em5;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/u74;

    const/4 v1, 0x5

    .line 2
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->g()Lcom/shabakaty/downloader/ve7;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ma1;

    .line 8
    invoke-static {v1}, Lcom/shabakaty/downloader/bd5;->a(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "messagingClientEvent"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/shabakaty/downloader/ma1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/shabakaty/downloader/ma1$a;)V

    .line 9
    sput-object v0, Lcom/shabakaty/downloader/em5;->b:Lcom/shabakaty/downloader/ma1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ns2;

    check-cast p2, Lcom/shabakaty/downloader/m43;

    sget-object v0, Lcom/shabakaty/downloader/em5;->b:Lcom/shabakaty/downloader/ma1;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/ns2;->a:Lcom/shabakaty/downloader/ms2;

    .line 3
    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    return-void
.end method
