.class public final Lcom/onesignal/y1$a;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Lcom/onesignal/y1$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/y1;->i(Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/shabakaty/downloader/i23;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/y1$a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/onesignal/y1$a;->b:Lcom/shabakaty/downloader/i23;

    iput-object p3, p0, Lcom/onesignal/y1$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/onesignal/y1;->h:Lcom/onesignal/y1;

    .line 2
    iget-object v0, p0, Lcom/onesignal/y1$a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onesignal/y1$a;->b:Lcom/shabakaty/downloader/i23;

    iget-object v2, p0, Lcom/onesignal/y1$a;->c:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/onesignal/y1;->g(Landroid/app/Activity;Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V

    return-void
.end method
