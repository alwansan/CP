.class public final Lcom/shabakaty/downloader/it2$h;
.super Lcom/shabakaty/downloader/af2;
.source "Migrations.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/it2;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/it2$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/it2$h;

    invoke-direct {v0}, Lcom/shabakaty/downloader/it2$h;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/it2$h;->r:Lcom/shabakaty/downloader/it2$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `users` (\n\t`id` TEXT NOT NULL DEFAULT \"\",\n\t`userName` TEXT NOT NULL DEFAULT \"\",\n\t`firstName` TEXT NOT NULL DEFAULT \"\",\n\t`lastName` TEXT NOT NULL DEFAULT \"\",\n\t`password` TEXT NOT NULL DEFAULT \"\",\n\t`token` TEXT NOT NULL DEFAULT \"\",\n\t`refreshToken` TEXT NOT NULL DEFAULT \"\",\n\t`refreshTime` TEXT NOT NULL DEFAULT \"\",\n\t`img` TEXT NOT NULL DEFAULT \"\",\n\tPRIMARY KEY(`id`)\n)"

    return-object v0
.end method
