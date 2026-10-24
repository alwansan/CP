.class public final Lcom/shabakaty/downloader/b27;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@19.0.1"


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

    new-instance v0, Lcom/shabakaty/downloader/v17;

    invoke-direct {v0}, Lcom/shabakaty/downloader/v17;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/b27;->a:Ljava/util/Iterator;

    new-instance v0, Lcom/shabakaty/downloader/y17;

    invoke-direct {v0}, Lcom/shabakaty/downloader/y17;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/b27;->b:Ljava/lang/Iterable;

    return-void
.end method
