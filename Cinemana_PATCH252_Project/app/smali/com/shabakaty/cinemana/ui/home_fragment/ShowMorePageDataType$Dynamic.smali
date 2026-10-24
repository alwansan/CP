.class public abstract Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic;
.super Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;
.source "ShowMoreFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Dynamic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Group;,
        Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;
    }
.end annotation


# instance fields
.field public final id:Ljava/lang/String;

.field public final type:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;-><init>(Ljava/lang/String;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic;->id:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic;->type:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;

    return-void
.end method
