.class public Lcom/shabakaty/downloader/j51$a;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/j51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/shabakaty/downloader/j51$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j51;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j51$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/j51$b;-><init>()V

    return-object v0
.end method
