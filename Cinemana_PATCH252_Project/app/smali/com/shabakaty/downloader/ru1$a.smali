.class public final Lcom/shabakaty/downloader/ru1$a;
.super Lcom/shabakaty/downloader/af2;
.source "HomePageViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ru1;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
        "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/ru1$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ru1$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ru1$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ru1$a;->r:Lcom/shabakaty/downloader/ru1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    check-cast p2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    const-string v0, "old"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "new"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->appSettings:Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->language:Lcom/shabakaty/downloader/tx4;

    .line 5
    iget-object v1, p2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->appSettings:Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->language:Lcom/shabakaty/downloader/tx4;

    .line 7
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    .line 10
    iget-object p2, p2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->filterSettings:Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    .line 11
    iget-object p2, p2, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;->parentalLevel:Lcom/shabakaty/downloader/ia3;

    .line 12
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
