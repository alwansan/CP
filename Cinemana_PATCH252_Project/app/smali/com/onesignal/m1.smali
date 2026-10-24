.class public Lcom/onesignal/m1;
.super Lcom/onesignal/x0$d;
.source "TrackGooglePurchase.java"


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/onesignal/l1;


# direct methods
.method public constructor <init>(Lcom/onesignal/l1;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/m1;->b:Lcom/onesignal/l1;

    iput-object p2, p0, Lcom/onesignal/m1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/onesignal/x0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/onesignal/m1;->b:Lcom/onesignal/l1;

    .line 2
    iget-object p1, p1, Lcom/onesignal/l1;->f:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p0, Lcom/onesignal/m1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/onesignal/m1;->b:Lcom/onesignal/l1;

    .line 5
    iget-object p1, p1, Lcom/onesignal/l1;->f:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GTPlayerPurchases"

    const-string v1, "purchaseTokens"

    .line 7
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "ExistingPurchases"

    const/4 v1, 0x1

    .line 8
    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    iget-object p1, p0, Lcom/onesignal/m1;->b:Lcom/onesignal/l1;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, Lcom/onesignal/l1;->g:Z

    .line 11
    iput-boolean v0, p1, Lcom/onesignal/l1;->h:Z

    return-void
.end method
