.class public final Lcom/shabakaty/downloader/t30$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/t30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/accounts/Account;

.field public b:Lcom/shabakaty/downloader/dd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/dd<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/shabakaty/downloader/t30;
    .locals 10
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/shabakaty/downloader/t30;

    iget-object v1, p0, Lcom/shabakaty/downloader/t30$a;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/shabakaty/downloader/t30$a;->b:Lcom/shabakaty/downloader/dd;

    iget-object v6, p0, Lcom/shabakaty/downloader/t30$a;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/shabakaty/downloader/t30$a;->d:Ljava/lang/String;

    sget-object v8, Lcom/shabakaty/downloader/x54;->r:Lcom/shabakaty/downloader/x54;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/t30;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/x54;)V

    return-object v9
.end method
