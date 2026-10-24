.class public final Lcom/shabakaty/downloader/d97;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/b97;

    invoke-direct {v0}, Lcom/shabakaty/downloader/b97;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/d97;->a:Ljava/util/Iterator;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/h97;

    invoke-direct {v0}, Lcom/shabakaty/downloader/h97;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/d97;->b:Ljava/lang/Iterable;

    return-void
.end method
