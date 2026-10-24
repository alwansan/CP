.class public final Lcom/onesignal/y1$b;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/y1;->i(Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/i23;

.field public final synthetic s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/y1$b;->r:Lcom/shabakaty/downloader/i23;

    iput-object p2, p0, Lcom/onesignal/y1$b;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onesignal/y1$b;->r:Lcom/shabakaty/downloader/i23;

    iget-object v1, p0, Lcom/onesignal/y1$b;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/onesignal/y1;->i(Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V

    return-void
.end method
