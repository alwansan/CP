.class public final Lzendesk/messaging/TimestampFactory_Factory;
.super Ljava/lang/Object;
.source "TimestampFactory_Factory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final contextProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/messaging/TimestampFactory_Factory;->contextProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/TimestampFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;)",
            "Lzendesk/messaging/TimestampFactory_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/messaging/TimestampFactory_Factory;

    invoke-direct {v0, p0}, Lzendesk/messaging/TimestampFactory_Factory;-><init>(Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/messaging/TimestampFactory_Factory;->get()Lzendesk/messaging/TimestampFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/TimestampFactory;
    .locals 2

    .line 2
    new-instance v0, Lzendesk/messaging/TimestampFactory;

    iget-object v1, p0, Lzendesk/messaging/TimestampFactory_Factory;->contextProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lzendesk/messaging/TimestampFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
