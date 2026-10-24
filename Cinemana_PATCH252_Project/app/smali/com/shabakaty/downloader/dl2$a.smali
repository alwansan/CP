.class public final Lcom/shabakaty/downloader/dl2$a;
.super Lcom/shabakaty/downloader/af2;
.source "LoginViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/dl2;-><init>(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/al2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/mq3;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/dl2$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/dl2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dl2$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/dl2$a;->r:Lcom/shabakaty/downloader/dl2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mq3;

    const-string v1, "[a-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/mq3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
