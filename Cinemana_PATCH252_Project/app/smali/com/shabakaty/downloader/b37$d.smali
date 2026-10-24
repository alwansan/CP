.class public abstract Lcom/shabakaty/downloader/b37$d;
.super Lcom/shabakaty/downloader/b37;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/h77;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/b37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/shabakaty/downloader/b37$d<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/b37<",
        "TMessageType;TBuilderType;>;",
        "Lcom/shabakaty/downloader/h77;"
    }
.end annotation


# instance fields
.field public zzbre:Lcom/shabakaty/downloader/d27;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d27<",
            "Lcom/shabakaty/downloader/b37$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b37;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/d27;->d:Lcom/shabakaty/downloader/d27;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/b37$d;->zzbre:Lcom/shabakaty/downloader/d27;

    return-void
.end method
