.class public abstract Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;
.super Ljava/lang/Object;
.source "ShowMoreFragment.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic;,
        Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed;,
        Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;,
        Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$a;


# instance fields
.field public final title:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;->Companion:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;->title:Ljava/lang/String;

    return-object v0
.end method
