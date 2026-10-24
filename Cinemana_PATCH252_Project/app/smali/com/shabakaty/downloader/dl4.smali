.class public final Lcom/shabakaty/downloader/dl4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dl4$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dl4$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dl4$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/dl4;->a:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ie7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ie7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/dl4;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
