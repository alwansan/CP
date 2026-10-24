.class public Lcom/shabakaty/downloader/as3;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ad;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ad;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/as3;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/shabakaty/downloader/as3;->a:Ljava/util/concurrent/Executor;

    return-void
.end method
