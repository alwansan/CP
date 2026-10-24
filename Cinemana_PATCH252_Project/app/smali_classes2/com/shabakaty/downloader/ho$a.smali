.class public final Lcom/shabakaty/downloader/ho$a;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lcom/shabakaty/downloader/de0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/de0<",
        "Lcom/shabakaty/downloader/ys3;",
        "Lcom/shabakaty/downloader/ys3;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/ho$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ho$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ho$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ho$a;->r:Lcom/shabakaty/downloader/ho$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ys3;

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/downloader/bz4;->a(Lcom/shabakaty/downloader/ys3;)Lcom/shabakaty/downloader/ys3;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->close()V

    .line 4
    throw v0
.end method
