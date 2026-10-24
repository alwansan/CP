.class public Lcom/onesignal/e0$a;
.super Ljava/lang/Object;
.source "OSNotificationOpenedResult.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/e0;-><init>(Lcom/shabakaty/downloader/c33;Lcom/shabakaty/downloader/d33;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/onesignal/e0;


# direct methods
.method public constructor <init>(Lcom/onesignal/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/e0$a;->r:Lcom/onesignal/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x6

    const-string v1, "Running complete from OSNotificationOpenedResult timeout runnable!"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/onesignal/e0$a;->r:Lcom/onesignal/e0;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/onesignal/e0;->b(Z)V

    return-void
.end method
