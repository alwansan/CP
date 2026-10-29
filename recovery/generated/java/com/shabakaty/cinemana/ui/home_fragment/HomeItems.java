package com.shabakaty.cinemana.ui.home_fragment;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: HomePageViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R*\u0010'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R$\u0010.\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R$\u00105\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:¨\u0006;"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;", "sliderItem", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;", "getSliderItem", "()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;", "setSliderItem", "(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;)V", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;", "featuredMovies", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;", "getFeaturedMovies", "()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;", "setFeaturedMovies", "(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;)V", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;", "ad", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;", "getAd", "()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;", "setAd", "(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;)V", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;", "featuredTvShows", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;", "getFeaturedTvShows", "()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;", "setFeaturedTvShows", "(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;)V", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$RecentlyAdded;", "recentlyAdded", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$RecentlyAdded;", "getRecentlyAdded", "()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$RecentlyAdded;", "setRecentlyAdded", "(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$RecentlyAdded;)V", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$SecondGroupsSlice;", "secondGroupSlice", "Ljava/util/List;", "getSecondGroupSlice", "()Ljava/util/List;", "setSecondGroupSlice", "(Ljava/util/List;)V", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;", "franchises", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;", "getFranchises", "()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;", "setFranchises", "(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;)V", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;", "bottomGroups", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;", "getBottomGroups", "()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;", "setBottomGroups", "(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class HomeItems {
    public HomeItem.Ad ad;
    public HomeItem.BottomGroups bottomGroups;
    public HomeItem.Horizontal.FeaturedMovies featuredMovies;
    public HomeItem.Horizontal.FeaturedTvShows featuredTvShows;
    public HomeItem.Franchises franchises;
    public HomeItem.Horizontal.RecentlyAdded recentlyAdded;
    public List<HomeItem.Horizontal.SecondGroupsSlice> secondGroupSlice;
    public HomeItem.Slider sliderItem;

    public HomeItems() {
        this(null, null, null, null, null, null, null, null, 255);
    }

    public HomeItems(HomeItem.Slider slider, HomeItem.Horizontal.FeaturedMovies featuredMovies, HomeItem.Ad ad, HomeItem.Horizontal.FeaturedTvShows featuredTvShows, HomeItem.Horizontal.RecentlyAdded recentlyAdded, List list, HomeItem.Franchises franchises, HomeItem.BottomGroups bottomGroups, int i) {
        HomeItem.Ad.a aVar = (i & 4) != 0 ? HomeItem.Ad.a.a : null;
        this.sliderItem = null;
        this.featuredMovies = null;
        this.ad = aVar;
        this.featuredTvShows = null;
        this.recentlyAdded = null;
        this.secondGroupSlice = null;
        this.franchises = null;
        this.bottomGroups = null;
    }

    public final List<HomeItem.Horizontal> a() {
        ArrayList arrayList = new ArrayList();
        HomeItem.Horizontal.FeaturedMovies featuredMovies = this.featuredMovies;
        if (featuredMovies != null) {
            arrayList.add(featuredMovies);
        }
        HomeItem.Horizontal.FeaturedTvShows featuredTvShows = this.featuredTvShows;
        if (featuredTvShows != null) {
            arrayList.add(featuredTvShows);
        }
        HomeItem.Horizontal.RecentlyAdded recentlyAdded = this.recentlyAdded;
        if (recentlyAdded != null) {
            arrayList.add(recentlyAdded);
        }
        List<HomeItem.Horizontal.SecondGroupsSlice> list = this.secondGroupSlice;
        if (list != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HomeItems)) {
            return false;
        }
        HomeItems homeItems = (HomeItems) obj;
        return j32.a(this.sliderItem, homeItems.sliderItem) && j32.a(this.featuredMovies, homeItems.featuredMovies) && j32.a(this.ad, homeItems.ad) && j32.a(this.featuredTvShows, homeItems.featuredTvShows) && j32.a(this.recentlyAdded, homeItems.recentlyAdded) && j32.a(this.secondGroupSlice, homeItems.secondGroupSlice) && j32.a(this.franchises, homeItems.franchises) && j32.a(this.bottomGroups, homeItems.bottomGroups);
    }

    public int hashCode() {
        HomeItem.Slider slider = this.sliderItem;
        int iHashCode = (slider == null ? 0 : slider.hashCode()) * 31;
        HomeItem.Horizontal.FeaturedMovies featuredMovies = this.featuredMovies;
        int iHashCode2 = (iHashCode + (featuredMovies == null ? 0 : featuredMovies.hashCode())) * 31;
        HomeItem.Ad ad = this.ad;
        int iHashCode3 = (iHashCode2 + (ad == null ? 0 : ad.hashCode())) * 31;
        HomeItem.Horizontal.FeaturedTvShows featuredTvShows = this.featuredTvShows;
        int iHashCode4 = (iHashCode3 + (featuredTvShows == null ? 0 : featuredTvShows.hashCode())) * 31;
        HomeItem.Horizontal.RecentlyAdded recentlyAdded = this.recentlyAdded;
        int iHashCode5 = (iHashCode4 + (recentlyAdded == null ? 0 : recentlyAdded.hashCode())) * 31;
        List<HomeItem.Horizontal.SecondGroupsSlice> list = this.secondGroupSlice;
        int iHashCode6 = (iHashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        HomeItem.Franchises franchises = this.franchises;
        int iHashCode7 = (iHashCode6 + (franchises == null ? 0 : franchises.hashCode())) * 31;
        HomeItem.BottomGroups bottomGroups = this.bottomGroups;
        return iHashCode7 + (bottomGroups != null ? bottomGroups.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbA = um3.a("HomeItems(sliderItem=");
        sbA.append(this.sliderItem);
        sbA.append(", featuredMovies=");
        sbA.append(this.featuredMovies);
        sbA.append(", ad=");
        sbA.append(this.ad);
        sbA.append(", featuredTvShows=");
        sbA.append(this.featuredTvShows);
        sbA.append(", recentlyAdded=");
        sbA.append(this.recentlyAdded);
        sbA.append(", secondGroupSlice=");
        sbA.append(this.secondGroupSlice);
        sbA.append(", franchises=");
        sbA.append(this.franchises);
        sbA.append(", bottomGroups=");
        sbA.append(this.bottomGroups);
        sbA.append(')');
        return sbA.toString();
    }
}
