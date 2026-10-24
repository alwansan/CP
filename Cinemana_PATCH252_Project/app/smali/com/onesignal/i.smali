.class public Lcom/onesignal/i;
.super Ljava/lang/Object;
.source "InAppMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/onesignal/m;


# direct methods
.method public constructor <init>(Lcom/onesignal/m;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/i;->s:Lcom/onesignal/m;

    iput p2, p0, Lcom/onesignal/i;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/onesignal/i;->s:Lcom/onesignal/m;

    .line 2
    iget-object v0, v0, Lcom/onesignal/m;->l:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const-string v2, "WebView height update skipped, new height will be used once it is displayed."

    .line 3
    invoke-static {v0, v2, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5
    iget v1, p0, Lcom/onesignal/i;->r:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object v1, p0, Lcom/onesignal/i;->s:Lcom/onesignal/m;

    .line 7
    iget-object v1, v1, Lcom/onesignal/m;->l:Landroid/webkit/WebView;

    .line 8
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Lcom/onesignal/i;->s:Lcom/onesignal/m;

    .line 10
    iget-object v1, v0, Lcom/onesignal/m;->n:Lcom/onesignal/c;

    if-eqz v1, :cond_1

    .line 11
    iget v2, p0, Lcom/onesignal/i;->r:I

    .line 12
    iget-object v3, v0, Lcom/onesignal/m;->k:Lcom/onesignal/y1$g;

    .line 13
    iget-boolean v4, v0, Lcom/onesignal/m;->j:Z

    .line 14
    invoke-virtual {v0, v2, v3, v4}, Lcom/onesignal/m;->c(ILcom/onesignal/y1$g;Z)Lcom/onesignal/c$b;

    move-result-object v0

    .line 15
    invoke-virtual {v1, v0}, Lcom/onesignal/c;->a(Lcom/onesignal/c$b;)V

    :cond_1
    return-void
.end method
