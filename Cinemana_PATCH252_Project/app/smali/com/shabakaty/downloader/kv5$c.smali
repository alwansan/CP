.class public abstract Lcom/shabakaty/downloader/kv5$c;
.super Lcom/shabakaty/downloader/kv5;

# interfaces
.implements Lcom/shabakaty/downloader/g36;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/kv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/shabakaty/downloader/kv5$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/kv5<",
        "TMessageType;TBuilderType;>;",
        "Lcom/shabakaty/downloader/g36;"
    }
.end annotation


# instance fields
.field public zzjv:Lcom/shabakaty/downloader/ms5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ms5<",
            "Lcom/shabakaty/downloader/kv5$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/shabakaty/downloader/kv5;-><init>()V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ms5;->d:Lcom/shabakaty/downloader/ms5;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/kv5$c;->zzjv:Lcom/shabakaty/downloader/ms5;

    return-void
.end method
