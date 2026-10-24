.class public final Lcom/shabakaty/downloader/dl2$c;
.super Ljava/lang/Object;
.source "LoginViewModel.kt"

# interfaces
.implements Lcom/shabakaty/usermanagement/callbacks/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/dl2;-><init>(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/al2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/dl2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dl2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/dl2$c;->a:Lcom/shabakaty/downloader/dl2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginResult(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/dl2$c;->a:Lcom/shabakaty/downloader/dl2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/dl2;->r()V

    :cond_0
    return-void
.end method
